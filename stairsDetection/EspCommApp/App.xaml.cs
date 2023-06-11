using EspCommApp.Services;
using EspCommApp.Views;
using System;
using System.Net.Http;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace EspCommApp
{
    public partial class App : Application
    {
        public static WebServerService webServerService;
        public static HttpClient client = new HttpClient() { BaseAddress = new Uri("https://averti.azurewebsites.net/") };

        public App()
        {
            InitializeComponent();
            webServerService = new WebServerService();
            MainPage = new MainPage();
        }

        protected override void OnStart()
        {
            DeviceDisplay.KeepScreenOn = true;

            webServerService.StartWebServer();
        }

        protected override void OnSleep()
        {
        }

        protected override void OnResume()
        {
            DeviceDisplay.KeepScreenOn = true;

        }
    }





}

