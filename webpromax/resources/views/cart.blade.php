<!-- resources/views/cart.blade.php -->

<h1>Giỏ hàng</h1>

@if (session('success'))
    <div>{{ session('success') }}</div>
@endif

@if (session('error'))
    <div>{{ session('error') }}</div>
@endif

<table>
    <thead>
        <tr>
            <th>Sản phẩm</th>
            <th>Giá</th>
            <th>Số lượng</th>
        </tr>
    </thead>
    <tbody>
        @foreach (session('cart', []) as $item)
            <tr>
                <td>{{ $item['name'] }}</td>
                <td>{{ $item['price'] }}</td>
                <td>{{ $item['quantity'] }}</td>
            </tr>
        @endforeach
    </tbody>
</table>
