using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SmartPanTask.Controllers
{
    [Authorize]
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        //public ActionResult _Blog2()
        //{
        //    var CompanyInfo = db.Companies.Where(c => c.CompanyName == id).FirstOrDefault();
        //    var companyId = db.Companies.Where(c => c.CompanyName == id).FirstOrDefault().UserId;
        //    ViewBag.news = db.News.Where(c => c.Userid == companyId).OrderByDescending(a => a.Id).ToList();
        //    return PartialView(CompanyInfo);
        //}
    }
}