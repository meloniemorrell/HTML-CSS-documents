using System;
using System.Text;

class Program
{
    static void Main()
    {
        // Part 1: declare a new StringBuilder.
        StringBuilder builder = new StringBuilder();

        // Part 2: call Append and AppendLine.
        builder.Append("All Aquarius:");
        builder.AppendLine();
        builder.Append("are water signs and take place in the month of February").AppendLine();

        // Part 3: call ToString and display.
        string innerString = builder.ToString();
        Console.WriteLine(innerString);
    }
}