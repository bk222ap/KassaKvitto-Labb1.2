using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyValuableCalculator.Model
{
    public class Receipt
    {
        private double paidSum;
        public double discountProcentage { get; private set; }
        public double discount { get; private set; }
      

        public double totalSum
        {
            get
            {
                return paidSum;
            }
            private set
            {
                paidSum = value;
            }
        }

        public double toPay { get; private set; }
        public Receipt(double totSum)
        {
            Calculate(totSum);
        }

        public void Calculate(double totSum)
        {
            totalSum = totSum;

            if (totSum < 500)
            {
                discountProcentage = 0;
            }
            else if (totSum < 1000)
            {
                discountProcentage = 0.05;
            }
            else if (totSum < 5000)
            {
                discountProcentage = 0.10;
            }
            else
            {
                discountProcentage = 0.15;
            }

            discount = totSum * discountProcentage;
            toPay = totSum - discount;
        }

    }
}