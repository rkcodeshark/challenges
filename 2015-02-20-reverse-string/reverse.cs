using System;

static class StringHelper
{
    /// <summary>
    /// Receives string and returns the string with its letters reversed.
    /// </summary>
    public static string ReverseString(string s)
    {
	char[] arr = s.ToCharArray();
	Array.Reverse(arr);
	return new string(arr);
    }
}

class Program
{
    static void Main()
    {
	Console.WriteLine(StringHelper.ReverseString("Code Shark"));
	
    }
}
