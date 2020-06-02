let form = new System.Windows.Forms.Form(Width  = 600, Height = 570, Text = "Главная форма")
let label = new System.Windows.Forms.Label(Text = "МЕСЯЦА ГОДА", Top = 10, Width = 110, ForeColor = System.Drawing.Color.Red, Font = new System.Drawing.Font(System.Drawing.FontFamily("Times New Roman"),10.0f, System.Drawing.FontStyle.Bold))
let january_button = new System.Windows.Forms.Button(Text = "Январь", Top = 50, Font = new System.Drawing.Font(System.Drawing.FontFamily("Times New Roman"),10.0f, System.Drawing.FontStyle.Bold))
let february_button = new System.Windows.Forms.Button(Text = "Февраль", Top = 90, Font = new System.Drawing.Font(System.Drawing.FontFamily("Times New Roman"),10.0f, System.Drawing.FontStyle.Bold))
let march_button = new System.Windows.Forms.Button(Text = "Март", Top = 130, Font = new System.Drawing.Font(System.Drawing.FontFamily("Times New Roman"),10.0f, System.Drawing.FontStyle.Bold))
let april_button = new System.Windows.Forms.Button(Text = "Апрель", Top = 170, Font = new System.Drawing.Font(System.Drawing.FontFamily("Times New Roman"),10.0f, System.Drawing.FontStyle.Bold))
let may_button = new System.Windows.Forms.Button(Text = "Май", Top = 210, Font = new System.Drawing.Font(System.Drawing.FontFamily("Times New Roman"),10.0f, System.Drawing.FontStyle.Bold))
let june_button = new System.Windows.Forms.Button(Text = "Июнь", Top = 250, Font = new System.Drawing.Font(System.Drawing.FontFamily("Times New Roman"),10.0f, System.Drawing.FontStyle.Bold))
let july_button = new System.Windows.Forms.Button(Text = "Июль", Top = 290, Font = new System.Drawing.Font(System.Drawing.FontFamily("Times New Roman"),10.0f, System.Drawing.FontStyle.Bold))
let august_button = new System.Windows.Forms.Button(Text = "Август", Top = 330, Font = new System.Drawing.Font(System.Drawing.FontFamily("Times New Roman"),10.0f, System.Drawing.FontStyle.Bold))
let september_button = new System.Windows.Forms.Button(Text = "Сентябрь", Top = 370, Font = new System.Drawing.Font(System.Drawing.FontFamily("Times New Roman"),10.0f, System.Drawing.FontStyle.Bold))
let october_button = new System.Windows.Forms.Button(Text = "Октобрь", Top = 410, Font = new System.Drawing.Font(System.Drawing.FontFamily("Times New Roman"),10.0f, System.Drawing.FontStyle.Bold))
let november_button = new System.Windows.Forms.Button(Text = "Ноябрь", Top = 450, Font = new System.Drawing.Font(System.Drawing.FontFamily("Times New Roman"),10.0f, System.Drawing.FontStyle.Bold))
let december_button = new System.Windows.Forms.Button(Text = "Декабрь", Top = 490, Font = new System.Drawing.Font(System.Drawing.FontFamily("Times New Roman"),10.0f, System.Drawing.FontStyle.Bold))
let mess _ = System.Windows.Forms.MessageBox.Show("Январь относится к зимнему времени года", "Сообщение",System.Windows.Forms.MessageBoxButtons.OK) |>ignore
let _ = january_button.Click.Add(mess)
let mess1 _ = System.Windows.Forms.MessageBox.Show("Февраль относится к зимнему времени года", "Сообщение",System.Windows.Forms.MessageBoxButtons.OK) |>ignore
let _ = february_button.Click.Add(mess1)
let mess2 _ = System.Windows.Forms.MessageBox.Show("Март относится к весеннему времени года", "Сообщение",System.Windows.Forms.MessageBoxButtons.OK) |>ignore
let _ = march_button.Click.Add(mess2)
let mess3 _ = System.Windows.Forms.MessageBox.Show("Апрель относится к весеннему времени года", "Сообщение",System.Windows.Forms.MessageBoxButtons.OK) |>ignore
let _ = april_button.Click.Add(mess3)
let mess4 _ = System.Windows.Forms.MessageBox.Show("Май относится к весеннему времени года", "Сообщение",System.Windows.Forms.MessageBoxButtons.OK) |>ignore
let _ = may_button.Click.Add(mess4)
let mess5 _ = System.Windows.Forms.MessageBox.Show("Июнь относится к летнему времени года", "Сообщение",System.Windows.Forms.MessageBoxButtons.OK) |>ignore
let _ = june_button.Click.Add(mess5)
let mess6 _ = System.Windows.Forms.MessageBox.Show("Июль относится к летнему времени года", "Сообщение",System.Windows.Forms.MessageBoxButtons.OK) |>ignore
let _ = july_button.Click.Add(mess6)
let mess7 _ = System.Windows.Forms.MessageBox.Show("Август относится к летнему времени года", "Сообщение",System.Windows.Forms.MessageBoxButtons.OK) |>ignore
let _ = august_button.Click.Add(mess7)
let mess8 _ = System.Windows.Forms.MessageBox.Show("Сентябрь относится к осеннему времени года", "Сообщение",System.Windows.Forms.MessageBoxButtons.OK) |>ignore
let _ = september_button.Click.Add(mess8)
let mess9 _ = System.Windows.Forms.MessageBox.Show("Октябрь относится к осеннему времени года", "Сообщение",System.Windows.Forms.MessageBoxButtons.OK) |>ignore
let _ = october_button.Click.Add(mess9)
let mess10 _ = System.Windows.Forms.MessageBox.Show("Ноябрь относится к осеннему времени года", "Сообщение",System.Windows.Forms.MessageBoxButtons.OK) |>ignore
let _ = november_button.Click.Add(mess10)
let mess11 _ = System.Windows.Forms.MessageBox.Show("Декабрь относится к зимнему времени года", "Сообщение",System.Windows.Forms.MessageBoxButtons.OK) |>ignore
let _ = december_button.Click.Add(mess11)
form.Controls.Add(label)
form.Controls.Add(january_button)
form.Controls.Add(february_button)
form.Controls.Add(march_button)
form.Controls.Add(april_button)
form.Controls.Add(may_button)
form.Controls.Add(june_button)
form.Controls.Add(july_button)
form.Controls.Add(august_button)
form.Controls.Add(september_button)
form.Controls.Add(october_button)
form.Controls.Add(november_button)
form.Controls.Add(december_button)
do System.Windows.Forms.Application.Run(form)