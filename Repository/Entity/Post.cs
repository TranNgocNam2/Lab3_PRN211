﻿using System;
using System.Collections.Generic;

#nullable disable

namespace Repository
{
    public partial class Post
    {
        public int PostId { get; set; }
        public int? AuthorId { get; set; }
        public DateTime? CreatedDate { get; set; }
        public DateTime? UpdatedDate { get; set; }
        public string Title { get; set; }
        public string Content { get; set; }
        public bool? PublishStatus { get; set; }
        public int? CategoryId { get; set; }

        public virtual AppUser Author { get; set; }
        public virtual PostCategory Category { get; set; }
    }
}
