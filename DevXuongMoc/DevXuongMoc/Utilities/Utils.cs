using System.Security.Cryptography;
using System.Text;

namespace DevXuongMoc.Utilities
{
    public static class Utils
    {
        public static string GetSHA256Hash(string s)
        {
            string hash = "";
            using (var sha256 = SHA256.Create())
            {
                var hashedBytes = sha256.ComputeHash(Encoding.UTF8.GetBytes(s));
                hash = BitConverter.ToString(hashedBytes).Replace("-", "").ToLower();

            }
            return hash;

        }
    }
}
