﻿namespace activants_backend.Entities
{
    public class Sushi
    {
        public int id { get; set; }
        public string name { get; set; }
        public string img_url { get; set; }
        public int price { get; set; }
        public DateTime created_at { get; set; }
    }
}
