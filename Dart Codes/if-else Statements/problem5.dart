
import 'dart:io';

void main()
{
    print("Enter a character : ");
    String? ch = stdin.readLineSync();

    if(ch=='a'||ch=='e'||ch=='i'||ch=='o'||ch=='u')
    {
        print("$ch is a Vowel");
    }
    else if(ch=='A'||ch=='E'||ch=='I'||ch=='O'||ch=='U')
    {
        print("$ch is a Vowel");
    }
    else
    {
        print("$ch is a Consonant");
    }
}