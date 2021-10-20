using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Resume_Builder
{
    public class resumedbentities:DbContext
    {
        public resumedbentities() : base("name=ConnectionString")
        {
        }
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            //throw new UnintentionalCodeFirstException();
        }
        public virtual DbSet<resumedata> resumedatas { get; set; }

       
    }
}