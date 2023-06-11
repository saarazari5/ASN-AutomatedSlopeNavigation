using EspCommApp.Services;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace EspCommApp.Interfaces
{
    public interface ITensorFlowService
    {
        //List<DetectResult> Classify(byte[] image);
        Task<DetectResult[]> DetectAsync(byte[] bytes);
    }
}
