using System;
using System.Collections.Generic;

#nullable disable

namespace Repository
{
    public partial class AppUser
    {
        public AppUser()
        {
            Posts = new HashSet<Post>();
        }

        public int UserId { get; set; }
        public string Fullname { get; set; }
        public string Address { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }

        public virtual ICollection<Post> Posts { get; set; }
    }
}
