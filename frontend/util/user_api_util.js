export const fetchAllUsers = () => (
  $.ajax({
    method: "GET",
    url: `/api/users`,
  })
);

export const fetchSingleUser = (id) => (
  $.ajax({
    method: "GET",
    url: `/api/users/${id}`,
  })
);

export const updateUser = (user, id) => (
  $.ajax({
    method: "PATCH",
    url: `/api/users/${id}`,
    data: user,
    contentType: false,
    processData: false
  })
);