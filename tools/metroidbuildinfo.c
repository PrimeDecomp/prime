#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define VERSION_MAX_LEN 35
#define METROID_BUILD_INFO_TAG "!#$MetroidBuildInfo!#$"

void* memmem(const void* l, size_t l_len, const void* s, size_t s_len) {
  register char *cur, *last;
  const char* cl = (const char*)l;
  const char* cs = (const char*)s;

  /* we need something to compare */
  if (l_len == 0 || s_len == 0)
    return NULL;

  /* "s" must be smaller or equal to "l" */
  if (l_len < s_len)
    return NULL;

  /* special case where s_len == 1 */
  if (s_len == 1)
    return memchr(l, (int)*cs, l_len);

  /* the last position where its possible to find "s" in "l" */
  last = (char*)cl + l_len - s_len;

  for (cur = (char*)cl; cur <= last; cur++)
    if (cur[0] == cs[0] && memcmp(cur, cs, s_len) == 0)
      return cur;

  return NULL;
}

int main(int argc, const char* argv[]) {
  if (argc < 3) {
    fprintf(stdout, "\t--- METROID BUILD INFO ---\n"
                    "\tWritten by Phillip \"Antidote\" Stephens\n"
                    "\tReleased under the MIT License\n\n"
                    "\tSets the MetroidBuildInfo tag value in a given binary\n"
                    "\tThe version string can be a maximum of 35 characters,\n"
                    "\texcluding null terminator\n"
                    "\t--------------------------\n"

    );
    fprintf(stdout, "Usage:\n"
                    "\tmetroidbuildinfo <binary> <version-string>\n");
    return -1;
  }

  /* Let's try to get the source binary */
  FILE* source = fopen(argv[1], "rb");
  if (!source) {
    fprintf(stderr, "Unable to open '%s'\nPlease ensure the file exists!\n", argv[1]);
    return -2;
  }

  /* Verify string length, if the string is too long hard error */
  if (strlen(argv[2]) > VERSION_MAX_LEN) {
    fprintf(stderr, "Version string '%s'\ntoo long, got %i, expected %i\n", argv[2], ver_len,
            VERSION_MAX_LEN);
    return -3;
  }
  /* Lets include the null terminator */

  /* Get source length */
  fseek(source, 0, SEEK_END);
  size_t source_len = ftell(source);
  rewind(source);
  void* source_buf = malloc(source_len);
  if (source_buf == NULL) {
    fprintf(stderr, "Unable to allocate buffer of size %zubytes!\n", source_len);
    return -4;
  }
  fread(source_buf, 1, source_len, source);
  fclose(source);

  /* Find the build info tag so we can stuff our version info in the binary */
  void* ptr =
      memmem(source_buf, source_len, METROID_BUILD_INFO_TAG, strlen(METROID_BUILD_INFO_TAG));
  if (ptr == NULL) {
    fprintf(stderr, "Unable to find build info tag in source!\n");
    return -5;
  }

  /* Lets actually copy over the build string */
  strcpy(ptr + strlen(METROID_BUILD_INFO_TAG), argv[2]);

  /* Now attempt to open the target file */
  FILE* target = fopen(argv[1], "wb");

  if (!target) {
    fprintf(stderr, "Unable to open '%s'\nPlease ensure you have write permissions!\n", argv[1]);
    return -3;
  }

  /* Finally write the buffer to the target file */
  fwrite(source_buf, 1, source_len, target);
  fclose(target);

  /* Don't leak */
  free(source_buf);

  return 1;
}
