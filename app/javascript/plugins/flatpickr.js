import flatpickr from 'flatpickr';
import 'flatpickr/dist/flatpickr.min.css';

flatpickr(".datepicker", {
  altInput: true,
  enableTime: true,
  minDate: "today"
});
