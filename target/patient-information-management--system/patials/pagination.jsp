<%--
  Created by IntelliJ IDEA.
  User: sirah
  Date: 13/07/2021
  Time: 11:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="pagination">
    <span>Items:</span>
    <select name="items_per_page" id="items_per_page">
        <option value="20">20</option>
        <option value="40">40</option>
        <option value="60">60</option>
        <option value="80">80</option>
        <option value="100">100</option>
    </select>
    <ul class="pagination-list">
        <li class="page-item active">1</li>
        <li class="page-item">2</li>
        <li class="page-item">3</li>
        <li class="page-item">4</li>
        <li class="page-item">5</li>
    </ul>
    <p>
        Page <span class="current-page">1</span> of
        <span class="all-pages">5</span>
    </p>
</div>
