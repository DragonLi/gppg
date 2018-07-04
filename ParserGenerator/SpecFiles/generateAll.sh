#!/bin/bash

# generate a fresh copy of parser.cs
mono gppg.exe /gplex /nolines gppg.y
mv parser.cs ..

# generate a fresh copy of Scanner.cs
mono gplex.exe gppg.lex
mv Scanner.cs ..

# generate a fresh copy of ScanAction.cs
mono gplex.exe ScanAction.lex
mv ScanAction.cs ..

mv GplexBuffers.cs ..