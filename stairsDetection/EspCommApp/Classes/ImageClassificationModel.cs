using EspCommApp.Interfaces;
using System;
using System.Collections.Generic;
using System.Text;

namespace EspCommApp.Services
{
    public class DetectResult
    {
        public string Label { get; }

        public float Score { get; }

        public Bounds Bounds { get; }

        public DetectResult(string label, float score, Bounds bounds)
        {
            Label = label;
            Score = score;
            Bounds = bounds;
        }
    }
}
