$(document).ready(function() {
  var prevSelectedCohortId;
  var $cohortSelect = $('#cohorts');
  var $studentSelect = $('#students');

  // Show Desert Rabbits by default
  showStudents(1);

  $cohortSelect.on('change', function(e) {
    var selectedCohortId = $(this).find('option:selected').val();
    hideStudents(prevSelectedCohortId);
    showStudents(selectedCohortId);
  });

  function showStudents(cohortId) {
    var $students = $studentSelect.find("[data-cohort-id=" + cohortId  + "]").show()
    var firstStudentName = $students.eq(0).val();

    prevSelectedCohortId = cohortId;
    $studentSelect.val(firstStudentName);
    $students.show();
  }

  function hideStudents(cohortId) {
    prevSelectedCohortId = cohortId;
    $studentSelect.find("[data-cohort-id=" + cohortId  + "]").hide();
  }
});

// https://github.com/devin-liu/phase-0-unit-2/tree/master/week-4/1-add-it-up
