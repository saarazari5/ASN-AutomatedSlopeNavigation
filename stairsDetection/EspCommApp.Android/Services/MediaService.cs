using Android.App;
using Android.Content;
using Android.Graphics;
using Android.Media;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using EspCommApp.Droid.Services;
using EspCommApp.Interfaces;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using Orientation = Android.Media.Orientation;

[assembly: Xamarin.Forms.Dependency(typeof(MediaService))]
namespace EspCommApp.Droid.Services
{
    public class MediaService : IMediaService
    {

        public byte[] ResizeAndRotateImage(byte[] imageData, float width, float height)
        {
            var watch = new System.Diagnostics.Stopwatch();

            // Load the bitmap 
            BitmapFactory.Options options = new BitmapFactory.Options();// Create object of bitmapfactory's option method for further option use
            options.InPurgeable = true; // inPurgeable is used to free up memory while required
            Bitmap originalImage = BitmapFactory.DecodeByteArray(imageData, 0, imageData.Length, options);
            var matrix = new Matrix();
            var scaleWidth = ((float)width) / originalImage.Width;
            var scaleHeight = ((float)height) / originalImage.Height;
            matrix.PostRotate(90);
            matrix.PreScale(scaleWidth, scaleHeight);
            var resizedImage = Bitmap.CreateBitmap(originalImage, 0, 0, originalImage.Width, originalImage.Height, matrix, true);
            //float newHeight = 0;
            //float newWidth = 0;

            //var originalHeight = originalImage.Height;
            //var originalWidth = originalImage.Width;

            //if (originalHeight > originalWidth)
            //{
            //    newHeight = height;
            //    float ratio = originalHeight / height;
            //    newWidth = originalWidth / ratio;
            //}
            //else
            //{
            //    newWidth = width;
            //    float ratio = originalWidth / width;
            //    newHeight = originalHeight / ratio;
            //}

            //Bitmap resizedImage = Bitmap.CreateScaledBitmap(originalImage, (int)newWidth, (int)newHeight, true);

            originalImage.Recycle();

            using (MemoryStream ms = new MemoryStream())
            {
                resizedImage.Compress(Bitmap.CompressFormat.Jpeg, 80, ms);

                resizedImage.Recycle();

                return ms.ToArray();
            }
        }
    }
}