// Copyright (c) 2011, XMOS Ltd., All rights reserved
// This software is freely distributable under a derivative of the
// University of Illinois/NCSA Open Source License posted in
// LICENSE.txt and at <http://github.xcore.com/>

/*
 ============================================================================
 Name        : $(sourceFile)
 Description : Red LED illumination for the XC-5 board 
 ============================================================================
 */

#include <xs1.h>
out port cled0 = XS1_PORT_4A;
out port cledG = XS1_PORT_1E;
out port cledR = XS1_PORT_1F;

int main(void) {
  /* Disable GREEN line */
  cledG <: 0;
  
  /* Enable RED line */
  cledR <: 1;    
  
  /* LED pattern */
  cled0 <: 0x1;  
  while (1)
  	;
  return 0;
}

