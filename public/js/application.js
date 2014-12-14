// $(document).ready(function() {
//   $('form').on('submit', handleSubmit);

//   function handleSubmit(e) {
//     var url = '/links?' + $(this).serialize();
//     $.getJSON(url)
//       .done(function(response) {
//         var link = response.links[0];
//         var html = '<a href=' + link + '>' + link + '</a>';

//         $('#link-container').html(html);
//       });
//     e.preventDefault();
//   }
// });
