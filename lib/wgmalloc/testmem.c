/*  Copyright (c) 1992-2005 CodeGen, Inc.  All rights reserved.
 *
 *  Redistribution and use in source and binary forms, with or without
 *  modification, are permitted provided that the following conditions
 *  are met:
 *  1. Redistributions of source code must retain the above copyright
 *     notice, this list of conditions and the following disclaimer.
 *  2. Redistributions in binary form must reproduce the above copyright
 *     notice, this list of conditions and the following disclaimer in the
 *     documentation and/or other materials provided with the distribution.
 *  3. Redistributions in any form must be accompanied by information on
 *     how to obtain complete source code for the CodeGen software and any
 *     accompanying software that uses the CodeGen software.  The source code
 *     must either be included in the distribution or be available for no
 *     more than the cost of distribution plus a nominal fee, and must be
 *     freely redistributable under reasonable conditions.  For an
 *     executable file, complete source code means the source code for all
 *     modules it contains.  It does not include source code for modules or
 *     files that typically accompany the major components of the operating
 *     system on which the executable file runs.  It does not include
 *     source code generated as output by a CodeGen compiler.
 *
 *  THIS SOFTWARE IS PROVIDED BY CODEGEN AS IS AND ANY EXPRESS OR IMPLIED
 *  WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
 *  OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 *  IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
 *  INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
 *  NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 *  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 *  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 *  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
 *  THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 *  (Commercial source/binary licensing and support is also available.
 *   Please contact CodeGen for details. http://www.codegen.com/)
 */

#include <stddef.h>
#include <stdlib.h>
#include <stdio.h>

/* LINEAR must be a multiple of 4 */
#define LINEAR	2000
#define BINARY  23
#define POINTERS (LINEAR > BINARY ? LINEAR : BINARY)

int
main(int argc, const char *argv[])
{
	char *startaddr;
	char *ptrs[POINTERS];
	int i, linear, binary;
	extern void programfilename(const char *);
	extern void *sbrk(int);
	extern void garbagecollect(void);

	programfilename(argv[0]);
	startaddr = sbrk(0);
	printf("starting sbrk(0) is %p\n", startaddr);

	linear = LINEAR;
	binary = BINARY;

	if (argc > 1)
		linear = atoi(argv[1]);

	if (argc > 2)
		binary = atoi(argv[2]);

	for (i = 0; i < linear; i++)
	{
		ptrs[i] = (char *)malloc(i);
		printf("malloc(%d) = %ud\n", i, ptrs[i] - startaddr);
	}

	for (i = 0; i < linear; i++)
	{
		printf("free(%ud)\n", ptrs[i] - startaddr);
		free(ptrs[i]);
		ptrs[i] = NULL;
	}

	for (i = 0; i < binary; i++)
	{
		ptrs[i] = (char *)malloc(1 << i);
		printf("malloc(%d) = %ud\n", 1 << i, ptrs[i] - startaddr);
	}

	for (i = 0; i < binary; i++)
	{
		printf("free(%ud)\n", ptrs[i] - startaddr);
		free(ptrs[i]);
		ptrs[i] = NULL;
	}

	printf("ending sbrk(0) is %p\n", sbrk(0));
	garbagecollect();
	return 0;
}
