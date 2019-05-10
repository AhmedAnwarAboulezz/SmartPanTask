﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using SmartPanTask.Models;

namespace SmartPanTask.Controllers
{
    public class EmployeeTasksController : Controller
    {
        private SmartPanEntities db = new SmartPanEntities();

        // GET: EmployeeTasks
        public ActionResult Index()
        {
            var employeeTasks = db.EmployeeTasks.Include(e => e.Employee);
            return View(employeeTasks.ToList());
        }

        // GET: EmployeeTasks/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            EmployeeTask employeeTask = db.EmployeeTasks.Find(id);
            if (employeeTask == null)
            {
                return HttpNotFound();
            }
            return View(employeeTask);
        }

        // GET: EmployeeTasks/Create
        public ActionResult Create()
        {
            ViewBag.EmployeeID = db.Employees.Where(a => a.Type == "Employee").ToList();
            //ViewBag.EmployeeID = new SelectList(db.Employees.Where(a=>a.Type == "Employee"), "Id", "FirstName");
            return View();
        }

        // POST: EmployeeTasks/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,TaskTitle,TaskDescription,EmployeeID,DateAssigned")] EmployeeTask employeeTask)
        {
            if (ModelState.IsValid)
            {
                db.EmployeeTasks.Add(employeeTask);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.EmployeeID = new SelectList(db.Employees, "Id", "FirstName", employeeTask.EmployeeID);
            return View(employeeTask);
        }

        // GET: EmployeeTasks/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            EmployeeTask employeeTask = db.EmployeeTasks.Find(id);
            if (employeeTask == null)
            {
                return HttpNotFound();
            }
            ViewBag.EmployeeID = new SelectList(db.Employees, "Id", "FirstName", employeeTask.EmployeeID);
            return View(employeeTask);
        }

        // POST: EmployeeTasks/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,TaskTitle,TaskDescription,EmployeeID,DateAssigned")] EmployeeTask employeeTask)
        {
            if (ModelState.IsValid)
            {
                db.Entry(employeeTask).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.EmployeeID = new SelectList(db.Employees, "Id", "FirstName", employeeTask.EmployeeID);
            return View(employeeTask);
        }

        // GET: EmployeeTasks/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            EmployeeTask employeeTask = db.EmployeeTasks.Find(id);
            if (employeeTask == null)
            {
                return HttpNotFound();
            }
            return View(employeeTask);
        }

        // POST: EmployeeTasks/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            EmployeeTask employeeTask = db.EmployeeTasks.Find(id);
            db.EmployeeTasks.Remove(employeeTask);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
