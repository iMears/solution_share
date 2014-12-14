$(document).ready(function() {
  var prevSelectedCohortId;
  var prevSelectedWeekId;
  var $cohortSelect = $('#cohorts');
  var $studentSelect = $('#students');
  var $weekSelect = $('#weeks');
  var $challengeSelect = $('#challenges');
  var $solutionLink = $('#solution-link');

  // Show Desert Rabbits by default
  showStudents(1);
  showChallenges(1);
  updateDisplayedCurrentLink();

  $cohortSelect.on('change', updateDisplayedCurrentLink);
  $studentSelect.on('change', updateDisplayedCurrentLink);
  $challengeSelect.on('change', updateDisplayedCurrentLink);
  $solutionLink.on('change', updateDisplayedCurrentLink);

  $cohortSelect.on('change', function(e) {
    var selectedCohortId = $(this).find('option:selected').val();
    hideStudents(prevSelectedCohortId);
    showStudents(selectedCohortId);
  });

  $weekSelect.on('change', function(e) {
    var selectedWeekId = $(this).find('option:selected').data('id');
    hideChallenges(prevSelectedWeekId);
    showChallenges(selectedWeekId);
  });

  $('#go').on('click', function(e) {
    window.location = buildCurrentLink();
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

  function showChallenges(weekId) {
    var $challenges = $challengeSelect.find("[data-week-id=" + weekId  + "]").show()
    var firstWeekName = $challenges.eq(0).val();

    prevSelectedWeekId = weekId;
    $challengeSelect.val(firstWeekName);
    $challenges.show();
  }

  function hideChallenges(weekId) {
    prevSelectedWeekId = weekId;
    $challengeSelect.find("[data-week-id=" + weekId  + "]").hide();
  }

  function buildCurrentLink() {
    var domain = 'https://github.com/';
    var username = $('#students').find('option:selected').data('username');
    var challengePath = $challengeSelect.find('option:selected').val();

    return domain + username + challengePath;
  }

  function updateDisplayedCurrentLink() {
    var currentLink = buildCurrentLink();

    $solutionLink.attr('href', currentLink);
    $solutionLink.text(currentLink);
  }

});

// https://github.com/devin-liu/phase-0-unit-2/tree/master/week-4/1-add-it-up
