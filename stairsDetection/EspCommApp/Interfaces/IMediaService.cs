using System;
using System.Collections.Generic;
using System.Text;

namespace EspCommApp.Interfaces
{
    public interface IMediaService
    {
        byte[] ResizeAndRotateImage(byte[] imageData, float width, float height);
    }
}
