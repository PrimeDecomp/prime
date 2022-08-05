CARDControl __CARDBlock[2];
DVDDiskID __CARDDiskNone;

void __CARDDefaultApiCallback(s32 chan, s32 result) {
}

void __CARDExtHandler(s32 chan, OSContext* context) {
    CARDControl* card;
    CARDCallback callback;

    card = &__CARDBlock[chan];
    if (card->attached) {
        card->attached = FALSE;
        EXISetExiCallback(chan, 0);
        OSCancelAlarm(&card->alarm);
        callback = card->exiCallback;
    
        if (callback) {
            card->exiCallback = 0;
            callback(chan, CARD_RESULT_NOCARD);
        }
    
        if (card->result != CARD_RESULT_BUSY) {
            card->result = CARD_RESULT_NOCARD;
        }
    
        callback = card->extCallback;
        if (callback && CARD_MAX_MOUNT_STEP <= card->mountStep) {
            card->extCallback = 0;
            callback(chan, CARD_RESULT_NOCARD);
        }
    }
}

void __CARDExiHandler(s32 chan, OSContext* context) {
    CARDControl* card;
    CARDCallback callback;
    u8 status;
    s32 result;

    card = &__CARDBlock[chan];

    OSCancelAlarm(&card->alarm);

    if (!card->attached) {
        return;
    }

    if (!EXILock(chan, 0, 0)) {
        result = CARD_RESULT_FATAL_ERROR;
        goto fatal;
    }

    if ((result = __CARDReadStatus(chan, &status)) < 0 || (result = __CARDClearStatus(chan)) < 0) {
        goto error;
    }

    if ((result = (status & 0x18) ? CARD_RESULT_IOERROR : CARD_RESULT_READY) == CARD_RESULT_IOERROR && --card->retry > 0) {
        result = Retry(chan);
        if (result >= 0) {
            return;
        }
        goto fatal;
    }

error:
    EXIUnlock(chan);

fatal:
    callback = card->exiCallback;
    if (callback) {
        card->exiCallback = 0;
        callback(chan, result);
    }
}

void __CARDTxHandler(s32 chan, OSContext* context) {
    CARDControl* card;
    CARDCallback callback;
    BOOL err;

    card = &__CARDBlock[chan];
    err = !EXIDeselect(chan);
    EXIUnlock(chan);
    callback = card->txCallback;
    if (callback) {
        card->txCallback = 0;
        callback(chan, (!err && EXIProbe(chan)) ? CARD_RESULT_READY : CARD_RESULT_NOCARD);
    }
}

void __CARDUnlockedHandler(s32 chan, OSContext* context) {
    CARDControl* card;
    CARDCallback callback;

    card = &__CARDBlock[chan];
    callback = card->unlockCallback;
    if (callback) {
        card->unlockCallback = 0;
        callback(chan, EXIProbe(chan) ? CARD_RESULT_UNLOCKED : CARD_RESULT_NOCARD);
    }
}

