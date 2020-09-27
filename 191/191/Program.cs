using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace store_value_in_array
{
    class Program
    {
        static void Main(string[] args)
        {
            int i;
            int[] arr = new int[5]; // 5 size array

            // Accepting value from user 
            for (i = 0; i < 5; i++)
            {
                Console.Write("\nEnter your number:\t");
                //Storing value in an array
                arr[i] = Convert.ToInt32(Console.ReadLine());
            }
            Console.WriteLine("\n\n");
            //Printing the value on console
            for (i = 0; i < 5; i++)
            {
                Console.WriteLine("you entered {0}", arr[i]);
            }
            Console.ReadLine();
        }
    }
}