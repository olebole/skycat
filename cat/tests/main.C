/*
 * E.S.O. - VLT project 
 * $Id: main.C,v 1.1.1.1 2009/03/31 14:11:52 cguirao Exp $
 *
 * main.C - C++ main for testing C interface
 * 
 * who             when       what
 * --------------  --------   ----------------------------------------
 * Allan Brighton  13 Oct 95  Created
 */


extern "C" int c_main(int argc, char** argv);

int main(int argc, char** argv)
{
    c_main(argc, argv);
    return 0;
}

