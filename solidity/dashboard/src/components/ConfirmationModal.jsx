import React from "react"
import Button from "./Button"
import FormInput from "./FormInput"
import { colors } from "../constants/colors"
import { withFormik } from "formik"
import { getErrorsObj } from "../forms/common-validators"

const ConfirmationModal = ({
  title,
  subtitle,
  confirmationText,
  btnText,
  onBtnClick,
  onCancel,
}) => {
  return (
    <>
      <h4>{title}</h4>
      <p className="text-big">{subtitle}</p>
      <ConfirmationFormFormik
        confirmationText={confirmationText}
        btnText={btnText}
        onBtnClick={onBtnClick}
        onCancel={onCancel}
      />
    </>
  )
}

export default React.memo(ConfirmationModal)

const ConfirmationForm = ({
  confirmationText,
  btnText,
  onBtnClick,
  onCancel,
  ...formikProps
}) => {
  return (
    <form>
      <FormInput
        name="confirmationText"
        type="text"
        label={`Type ${confirmationText} to confirm.`}
        placeholder=""
      />
      <div
        className="flex row center mt-2"
        style={{
          borderTop: `1px solid ${colors.grey20}`,
          margin: "0 -2rem",
          padding: "2rem 2rem 0",
        }}
      >
        <Button
          className="btn btn-primary"
          type="submit"
          disabled={!(formikProps.isValid && formikProps.dirty)}
          onClick={onBtnClick}
        >
          {btnText}
        </Button>
        <span onClick={onCancel} className="ml-1 text-link">
          Cancel
        </span>
      </div>
    </form>
  )
}

const ConfirmationFormFormik = withFormik({
  mapPropsToValues: () => ({
    confirmationText: "",
  }),
  validate: (values, { confirmationText }) => {
    const errors = {}

    if (values.confirmationText !== confirmationText) {
      errors.confirmationText = "Not match"
    }

    return getErrorsObj(errors)
  },
  displayName: "ConfirmationForm",
})(ConfirmationForm)
