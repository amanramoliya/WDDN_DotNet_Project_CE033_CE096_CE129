﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Resume_Builder
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class Database1Entities1 : DbContext
    {
        public Database1Entities1()
            : base("name=ConnectionString")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            //throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<C__MigrationHistory> C__MigrationHistory { get; set; }
        public virtual DbSet<forgotpass> forgotpasses { get; set; }
        public virtual DbSet<hobby> hobbies { get; set; }
        public virtual DbSet<language> languages { get; set; }
        public virtual DbSet<project> projects { get; set; }
        public virtual DbSet<resumedata> resumedatas { get; set; }
        public virtual DbSet<skill> skills { get; set; }
        public virtual DbSet<User> Users { get; set; }
        public virtual DbSet<User1> Users1 { get; set; }
    }
}
