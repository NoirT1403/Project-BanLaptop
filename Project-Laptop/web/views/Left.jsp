

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="col-sm-3">
                    <div class="card bg-light mb-3">
                        <div class="card-header bg-primary text-white text-uppercase"><i class="fa fa-list"></i> Categories</div>
                        <ul class="list-group category_block">
                            <c:forEach items="${listC}" var="o">
                                <li class="list-group-item text-white ${tag == o.cid ? "active" : " "}"><a href="category?cid=${o.cid}">${o.cname}</a></li>
                            </c:forEach>

                        </ul>
                    </div>
                    <div class="card bg-light mb-3">
                        <div class="card-header bg-success text-white text-uppercase">Last product</div>
                        <div class="card-body">
                            <img class="img-fluid" src="${p.image}" />
                            <h5 class="card-title"><a href="detail?pid=${p.id}" title="View Product">${p.name}</a></h5>
                            <p class="card-text">${p.description}</p>
                            <div class="row">
                                            <div class="col-12">
                                                <p class="btn btn-danger btn-block">${p.price} $</p>
                                            </div>
                                            <div class="col-md-6">
                                                <a href="buy?id=${p.id}&num=1" class="btn btn-success btn-block">Add to cart</a>
                                                
                                            </div>
                                            <div class="col-md-6">
                                                <a href="detail?pid=${p.id}" title="View Product" class="btn btn-success btn-block">Buy</a>
                                            </div>
                                        </div>
                        </div>
                    </div>
                </div>