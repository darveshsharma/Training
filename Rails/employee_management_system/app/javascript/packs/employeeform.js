function validateForm() {
  let name = document.forms["myForm"]["fname"].value;
  let  dob = document.forms["myForm"]["dob"].value;
  let doj = document.forms["myForm"]["doj"].value;
  if (name == "") {
    alert("Name must be filled out");
    return false;
  }
  var pattern = /^([0-9]{2})-([0-9]{2})-([0-9]{4})$/;
  if (dob == null || dob == "" || !pattern.test(dob)) {
      alert("Invalid date of birth");
      return false;
  }
  if (doj == null || doj == "" || !pattern.test(doj)) {
    alert("Invalid date of joining");
    return false;
  }
}
