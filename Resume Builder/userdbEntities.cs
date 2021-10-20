using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Resume_Builder
{
    public partial class userdbEntities: DbContext
    {
        public userdbEntities(): base("name=ConnectionString")
        {
        }
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            //throw new UnintentionalCodeFirstException();
        }
        public virtual DbSet<User> user { get; set; }

    }
}