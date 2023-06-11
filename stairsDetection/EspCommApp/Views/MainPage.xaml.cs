using EspCommApp.Classes;
using EspCommApp.Interfaces;
using EspCommApp.Services;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace EspCommApp.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class MainPage : ContentPage
    {
        public MainPage()
        {
            InitializeComponent();
        }

        //TaskQueue taskQueue = new TaskQueue();

        private async void cameraView_MediaCaptured(object sender, Xamarin.CommunityToolkit.UI.Views.MediaCapturedEventArgs e)
        {
            var predict = (await DependencyService.Get<ITensorFlowService>().DetectAsync(e.ImageData));

            predict = predict.Where(x => x.Score > 0.75).ToArray();
            // Print "Hello" using Debug.WriteLine()
            Debug.WriteLine("Hello");

            resultLabel.TextColor = Color.Red;
            if (predict.Count() > 0)
            {
                resultLabel.Text = "";
                for (int i = 0; i < predict.Length; i++)
                    resultLabel.Text += "TagName: " + predict[i].Label + Environment.NewLine + "Score:" + predict[i].Score + Environment.NewLine;
                if (resultLabel.Text.Contains("stair"))
                {
                    resultLabel.TextColor = Color.Green;
                    var res = await EspService.ContactESP(true);
                    if(res == null)
                    {
                        resultLabel.Text = "error when sending request";
                    }
                    else
                    {
                        resultLabel.Text = "distance from stairs is: .... "+ res;

                    }

                }
            }
            else
                resultLabel.Text = "Not detected";
        

            cameraView.Shutter();
        }

        private void cameraView_OnAvailable(object sender, bool e)
        {
            cameraView.Shutter();
        }
    }
}