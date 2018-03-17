$(()=> {
  $.get("data/routes/users/isLogin.php").then(data => {
    if (data.ok == 0)
      location = "login.html?back=" + encodeURIComponent(location.href);
    $.get("data/routes/cart/getCart.php").then(data => {
      var html = "";
      for (var p of data) {
        html += `
            <tr class="even" id="ev-4909">
              <td>
                <label class="mn-check checks check"></label><!--背景图标-->
              </td>
              <td>
                <div class="cart-table-product">
                  <div class="cart-table-img">
                    <a href = "product_detail.html?kw=${p.llid}">
                      <img src = "${p.sm}" alt = "">
                    </a>
                  </div>
                  <div class="cart-table-name">
                    <a href = "product_detail.html?kw=${p.llid}">${p.title}</a>
                  </div>
                </div>
              </td>
              <td class="price">¥ ${p.price}</td>
              <td>
                <div class="cart-table-number">
                  <a class="cut-product" href = "#">-</a>
                  <input type = "text" name="buyNum" value="${p.count}">
                  <a class="add-product" href = "#">+</a>
                </div>
              </td>
              <td class="a-price">¥ ${p.price*p.count}</td>
              <td>
                <a class="delete" href = "">
                  <i class="icon-delete"></i>
                  删除
                </a>
              </td>
            </tr>
				`;
      }
      $("#tbody1").html(html);
      
    })
  })
})