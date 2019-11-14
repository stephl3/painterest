export const signup = user => (
  $.ajax({
    method: "POST",
    url: `/api/users`,
    data: { user }
  })
);

export const update = (user, id) => (
  $.ajax({
    method: "PATCH",
    url: `/api/users/${id}`,
    data: user,
    contentType: false,
    processData: false
  })
);

export const login = user => (
  $.ajax({
    method: "POST",
    url: `/api/session`,
    data: { user }
  })
);

export const logout = () => (
  $.ajax({
    method: "DELETE",
    url: `/api/session`
  })
)