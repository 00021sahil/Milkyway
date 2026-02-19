<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="adminHeader.jsp" />

<style>
body{
    background: linear-gradient(120deg,#fff1f3,#ffe5ec);
}

.form-wrapper{
    max-width:750px;
    margin:60px auto;
    background:white;
    padding:40px;
    border-radius:18px;
    box-shadow:0 10px 30px rgba(0,0,0,0.12);
    animation:slideUp .6s ease;
}

@keyframes slideUp{
    from{opacity:0; transform:translateY(30px);}
    to{opacity:1; transform:translateY(0);}
}

.form-title{
    text-align:center;
    font-weight:bold;
    color:#d63384;
    margin-bottom:30px;
}

.form-row{
    display:flex;
    gap:20px;
    margin-bottom:20px;
}

.form-row input{
    flex:1;
}

.btn{
    transition:.3s;
}

.btn:hover{
    transform:translateY(-3px);
    box-shadow:0 6px 18px rgba(0,0,0,.2);
}
</style>

<div class="form-wrapper">

    <h2 class="form-title">Add New Cake Product</h2>

    <form action="/add-product" method="post">

        <div class="form-row">
            <input type="text" name="category" class="form-control" placeholder="Category" required>
            <input type="text" name="flavour" class="form-control" placeholder="Flavour" required>
        </div>

        <div class="mb-3">
            <input type="text" name="pname" class="form-control" placeholder="Product Name" required>
        </div>

        <div class="form-row">
            <input type="text" name="weight" class="form-control" placeholder="Weight" required>
            <input type="number" name="price" class="form-control" placeholder="Price (₹)" required>
        </div>

        <div class="mb-4">
            <input type="text" name="imageUrl" class="form-control" placeholder="Image URL">
        </div>

        <div class="text-center">
            <button type="submit" class="btn btn-success px-5">Add Product</button>
            <a href="allProductDetails.jsp" class="btn btn-secondary px-5 ms-2">Cancel</a>
        </div>

    </form>

</div>

<jsp:include page="footer.jsp" />
