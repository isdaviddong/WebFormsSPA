using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using isRock.Framework.PageMethods;

namespace WebFormsSPA
{
    public partial class _default : System.Web.UI.Page
    {
        /// <summary>
        /// 計算BMI
        /// </summary>
        /// <param name="height">身高</param>
        /// <param name="weight">體重</param>
        /// <returns></returns>
        [System.Web.Services.WebMethod(enableSession: true)]
        public static PageMethodDefaultResult<float> BMI(float height, float weight)
        {
            height = (height) / 100;
            var bmi = weight / (height * height);
            var result = new PageMethodDefaultResult<float>()
            {
                Data = bmi,
                isSuccess = true
            };
            return result;
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}