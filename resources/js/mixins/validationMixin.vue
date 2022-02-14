<script>
export default {
data: () => ({
  validationRules: {
    nickname: {
      rules: [
        value => !!value || 'Nickname is required',
        value => (value.length <= 12) || 'Nickname must be less than 12 characters'
      ]
    },
    email: {
      rules: [
        value => EMAIL_REGEX.test(value) || 'Please enter a valid email address'
      ]
    }
  }
}),
methods: {
    validateField(inputName, value) {
      return this.validationRules[inputName].rules
        .filter(rule => {
          const isValid = rule(value);
  
          if(isValid !== true) {
            return isValid;
          }
        })
        .map(rule => rule(value))
    },
    validateForm(form) {
      const formErrors = {};
      let formIsValid = true;
  
      for(let property in form) {
        const errors = this.validateField(property, form[property]);
  
        if(errors.length) {
          formIsValid = false;
        }
  
        formErrors[property] = errors;
      }
  
      formErrors.formIsValid = formIsValid;
  
      return formErrors;
    }
  }
}
</script>