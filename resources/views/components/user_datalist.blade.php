<input type="hidden" name="user_id" id="userListId" required="">
<input list="users_lists" id="ListUserId">
<datalist id="users_lists">
    @foreach ($users as $engineer)
        <option data-id="{{ $engineer->id }}" value="{{ $engineer->name }}">
    @endforeach
</datalist>
