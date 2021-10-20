using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Resume_Builder
{
    public class forgotdbEntities: DbContext
    {
        public forgotdbEntities():base("name= ConnectionString")
        {
        }
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            //throw new UnintentionalCodeFirstException();
        }
        public virtual DbSet<forgotpass> forgotpass { get; set; }

    }
 
}