from tkinter import *
from tkinter import ttk
import pymysql
from tkinter import messagebox


class Student:
    def __init__(self, root):
        self.root = root
        self.root.title("Student Management System")
        root.geometry("1350x900+0+0")

        title = Label(self.root, text="Gyalpozhing ECCD", bd=10, relief=GROOVE, font=("times new roman", 40, "bold"), bg="cyan", fg="black")
        title.pack(side=TOP, fill=X)

        # require data variables
        self.roll_var = StringVar()
        self.name_var = StringVar()
        self.gender_var = StringVar()
        self.dob_var = StringVar()
        self.dzong_var = StringVar()
        self.geog_var = StringVar()
        self.facilitator_var = StringVar()

        self.guard_var = StringVar()
        self.contact_var = StringVar()
        self.relation_var = StringVar()

        self.search_by = StringVar()
        self.search_txt = StringVar()

        # manage frame left side
        Manage_Frame = Frame(self.root, bd=4, relief=RIDGE, bg="cyan")
        Manage_Frame.place(x=20, y=100, width=450, height=750)

        m_title = Label(Manage_Frame, text="Child Information", bg="cyan", fg="black",
                        font=("times new roman", 20, "bold"))
        m_title.grid(row=0, columnspan=2, pady=20)

        lbl_roll = Label(Manage_Frame, text="ID", bg="cyan", fg="black", font=("times new roman", 18, "bold"))
        lbl_roll.grid(row=1, column=0, padx=20, pady=10, sticky="w")
        txt_roll = Entry(Manage_Frame, textvariable=self.roll_var, font=("times new roman", 17, "bold"), bd=5, relief=GROOVE)
        txt_roll.grid(row=1, column=1, padx=20, pady=10, sticky="w")

        lbl_name = Label(Manage_Frame, text="Name", bg="cyan", fg="black", font=("times new roman", 18, "bold"))
        lbl_name.grid(row=2, column=0, padx=20, pady=10, sticky="w")
        txt_name = Entry(Manage_Frame, textvariable=self.name_var, font=("times new roman", 18, "bold"), bd=5, relief=GROOVE)
        txt_name.grid(row=2, column=1, padx=20, pady=10, sticky="w")

        lbl_gender = Label(Manage_Frame, text="Sex", bg="cyan", fg="black", font=("times new roman", 18, "bold"))
        lbl_gender.grid(row=3, column=0, padx=20, pady=10, sticky="w")
        combo_gender = ttk.Combobox(Manage_Frame, textvariable=self.gender_var, font=("times new roman", 18, "bold"),state="readonly")
        combo_gender['values'] = ("M", "F")
        combo_gender.grid(row=3, column=1, padx=20, pady=10, sticky="w")

        lbl_dob = Label(Manage_Frame, text="DOB", bg="cyan", fg="black", font=("times new roman", 18, "bold"))
        lbl_dob.grid(row=4, column=0, padx=20, pady=10, sticky="w")
        txt_gender = Entry(Manage_Frame, textvariable=self.dob_var, font=("times new roman", 18, "bold"), bd=5, relief=GROOVE)
        txt_gender.grid(row=4, column=1, padx=20, pady=10, sticky="w")

        lbl_dzong = Label(Manage_Frame, text="Dzongkhag", bg="cyan", fg="black", font=("times new roman", 18, "bold"))
        lbl_dzong.grid(row=5, column=0, padx=20, pady=10, sticky="w")
        txt_dzong = Entry(Manage_Frame, textvariable=self.dzong_var, font=("times new roman", 18, "bold"), bd=5, relief=GROOVE)
        txt_dzong.grid(row=5, column=1, padx=20, pady=10, sticky="w")

        lbl_geog = Label(Manage_Frame, text="Geog", bg="cyan", fg="black", font=("times new roman", 18, "bold"))
        lbl_geog.grid(row=6, column=0, padx=20, pady=10, sticky="w")
        txt_geog = Entry(Manage_Frame, textvariable=self.geog_var, font=("times new roman", 18, "bold"), bd=5, relief=GROOVE)
        txt_geog.grid(row=6, column=1, padx=20, pady=10, sticky="w")

        lbl_facilitator = Label(Manage_Frame, text="Facilitator", bg="cyan", fg="black",font=("times new roman", 18, "bold"))
        lbl_facilitator.grid(row=7, column=0, padx=20, pady=10, sticky="w")
        txt_facilitator = Entry(Manage_Frame, textvariable=self.facilitator_var, font=("times new roman", 18, "bold"), bd=5, relief=GROOVE)
        txt_facilitator.grid(row=7, column=1, padx=20, pady=10, sticky="w")

        lbl_guard = Label(Manage_Frame, text="Guardian", bg="cyan", fg="black", font=("times new roman", 18, "bold"))
        lbl_guard.grid(row=8, column=0, padx=20, pady=10, sticky="w")
        txt_guard = Entry(Manage_Frame, textvariable=self.guard_var, font=("times new roman", 18, "bold"), bd=5, relief=GROOVE)
        txt_guard.grid(row=8, column=1, padx=20, pady=10, sticky="w")

        lbl_contact = Label(Manage_Frame, text="Contact", bg="cyan", fg="black", font=("times new roman", 18, "bold"))
        lbl_contact.grid(row=9, column=0, padx=20, pady=10, sticky="w")
        txt_contact = Entry(Manage_Frame, textvariable=self.contact_var, font=("times new roman", 18, "bold"), bd=5, relief=GROOVE)
        txt_contact.grid(row=9, column=1, padx=20, pady=10, sticky="w")

        lbl_relation = Label(Manage_Frame, text="Relation", bg="cyan", fg="black", font=("times new roman", 18, "bold"))
        lbl_relation.grid(row=10, column=0, padx=20, pady=10, sticky="w")
        txt_relation = Entry(Manage_Frame, textvariable=self.relation_var, font=("times new roman", 18, "bold"), bd=5, relief=GROOVE)
        txt_relation.grid(row=10, column=1, padx=20, pady=10, sticky="w")

        # button frame
        Button_Frame = Frame(Manage_Frame, bd=4, relief=RIDGE, bg="cyan")
        Button_Frame.place(x=10, y=690, width=430)

        addbtn = Button(Button_Frame, text="Add", width=8, command=self.add_student).grid(row=0, column=0, padx=5, pady=5)
        updatebtn = Button(Button_Frame, text="Update", width=8, command=self.update_data).grid(row=0, column=1, padx=5, pady=5)
        deletebtn = Button(Button_Frame, text="Delete", width=8, command=self.delete_data).grid(row=0, column=2, padx=5, pady=5)
        clearbtn = Button(Button_Frame, text="Clear", width=8, command=self.clear).grid(row=0, column=3, padx=5, pady=5)

        # ==============Detail Frame========================
        Detail_Frame = Frame(self.root, bd=4, relief=RIDGE, bg="cyan")
        Detail_Frame.place(x=500, y=100, width=890, height=690)

        lbl_search = Label(Detail_Frame, width=8, text="Search By", bg="cyan", fg="black",
                           font=("times new roman", 15, "bold"))
        lbl_search.grid(row=0, column=0, padx=5, pady=5, sticky="w")
        combo_search = ttk.Combobox(Detail_Frame, textvariable=self.search_by, font=("times new roman", 13),
                                    state="readonly")
        combo_search['values'] = ("Roll_no")
        combo_search.grid(row=0, column=1, padx=5, pady=5, sticky="w")

        txt_search = Entry(Detail_Frame, textvariable=self.search_txt, font=("times new roman", 13), bd=5,
                           relief=GROOVE)
        txt_search.grid(row=0, column=2, padx=5, pady=5, sticky="w")

        searchbtn = Button(Detail_Frame, text="Search", width=8, command=self.search_data).grid(row=0, column=3, padx=5, pady=5)
        showallbtn = Button(Detail_Frame, text="Show All", width=8, command=self.fetch_data).grid(row=0, column=4, padx=5, pady=5)

        # Table Frame
        Table_Frame = Frame(Detail_Frame, bd=4, relief=RIDGE, bg="cyan")
        Table_Frame.place(x=20, y=60, width=800, height=500)

        scroll_x = Scrollbar(Table_Frame, orient=HORIZONTAL)
        scroll_y = Scrollbar(Table_Frame, orient=VERTICAL)

        self.Student_table = ttk.Treeview(Table_Frame, columns=("Id", "name", "sex", "DOB", "Dzongkhag", "Geog", "Facilitator", "Guardian", "Contact", "Relation"), xscrollcommand=scroll_x.set, yscrollcommand=scroll_y.set)
        scroll_x.pack(side=BOTTOM, fill=X)
        scroll_y.pack(side=RIGHT, fill=Y)
        scroll_x.config(command=self.Student_table.xview)
        scroll_y.config(command=self.Student_table.yview)
        self.Student_table.heading("Id", text="Id")
        self.Student_table.heading("name", text="Name")
        self.Student_table.heading("sex", text="Sex")
        self.Student_table.heading("DOB", text="DOB")
        self.Student_table.heading("Dzongkhag", text="Dzongkhag")
        self.Student_table.heading("Geog", text="Geog")
        self.Student_table.heading("Facilitator", text="Facilitator")
        self.Student_table.heading("Guardian", text="Guardian")
        self.Student_table.heading("Contact", text="Contact")
        self.Student_table.heading("Relation", text="Relation")

        self.Student_table['show'] = 'headings'  

        # setting up widths of cols
        self.Student_table.column("Id", width=40)
        self.Student_table.column("name", width=170)
        self.Student_table.column("sex", width=50)
        self.Student_table.column("DOB", width=100)
        self.Student_table.column("Dzongkhag", width=100)
        self.Student_table.column("Geog", width=100)
        self.Student_table.column("Facilitator", width=150)
        self.Student_table.column("Guardian", width=150)
        self.Student_table.column("Contact", width=150)
        self.Student_table.column("Relation", width=150)

        self.Student_table.pack(fill=BOTH, expand=1)
        self.Student_table.bind("<ButtonRelease-1>", self.get_cursor)

        self.fetch_data()

    def add_student(self):

        if self.roll_var.get() == "" or self.name_var.get() == "":
            messagebox.showerror("Error", "please fill all the fields!!!")

        else:
            con = pymysql.connect(host="localhost", user="group1", password="@2020Lab3", database="ECCD")
            cur = con.cursor()

            cur.execute("insert into CHILD values(%s, %s, %s, %s, %s, %s, %s)", (self.roll_var.get(),
            self.name_var.get(), self.gender_var.get(), self.dob_var.get(), self.dzong_var.get(),
            self.geog_var.get(), self.facilitator_var.get()))

            cur.execute("insert into GUARDIAN values(%s, %s, %s, %s)", (self.guard_var.get(), self.contact_var.get(), self.relation_var.get(), self.roll_var.get()))
            con.commit()
            self.fetch_data()
            self.clear()
            con.close()
            messagebox.showinfo("Successful", "Record has been inserted.")

    def fetch_data(self):

        con = pymysql.connect(host="localhost", user="group1", password="@2020Lab3", database="ECCD")
        cur = con.cursor()

        cur.execute("select * from CHILD left join GUARDIAN on Id = childId")
        rows = cur.fetchall()
        if (len(rows) != 0):
            self.Student_table.delete(*self.Student_table.get_children())
            for row in rows:
                self.Student_table.insert('', END, values=row)

            con.commit()
        con.close()

    def clear(self):
        self.roll_var.set("")
        self.name_var.set("")
        self.gender_var.set("")
        self.dob_var.set("")
        self.dzong_var.set("")
        self.geog_var.set("")
        self.facilitator_var.set("")
        self.guard_var.set("")
        self.contact_var.set("")
        self.relation_var.set("")

    def get_cursor(self, evnt):
        cursor_row = self.Student_table.focus()
        content = self.Student_table.item(cursor_row)
        row = content['values']
        self.roll_var.set(row[0])
        self.name_var.set(row[1])
        self.gender_var.set(row[2])
        self.dob_var.set(row[3])
        self.dzong_var.set(row[4])
        self.geog_var.set(row[5])
        self.facilitator_var.set(row[6])
        self.guard_var.set(row[7])
        self.contact_var.set(row[8])
        self.relation_var.set(row[9])

    def update_data(self):
        if self.roll_var.get() == "" or self.name_var.get() == "":
            messagebox.showerror("Error", "please fill all the fields!!!")
        else:
            con = pymysql.connect(host="localhost", user="group1", password="@2020Lab3", database="ECCD")
            cur = con.cursor()

            cur.execute("UPDATE CHILD SET name=%s, sex=%s, DOB=%s, Dzongkhag=%s, Geog=%s, FacilitatorName=%s where Id=%s", (self.name_var.get(), self.gender_var.get(), self.dob_var.get(), self.dzong_var.get(), self.geog_var.get(), self.facilitator_var.get(), self.roll_var.get()))
            cur.execute("UPDATE GUARDIAN SET Name=%s, Contact_No=%s, Relation=%s where childId=%s", (self.guard_var.get(), self.contact_var.get(), self.relation_var.get(), self.roll_var.get()))
            con.commit()
            self.fetch_data()
            self.clear()
            con.close()
            messagebox.showinfo("successful", "Record has been updated.")

    def delete_data(self):
        con = pymysql.connect(host="localhost", user="group1", password="@2020Lab3", database="ECCD")
        cur = con.cursor()

        cur.execute("delete from GUARDIAN where childId=%s", self.roll_var.get())
        cur.execute("delete from CHILD where Id=%s", self.roll_var.get())
        con.commit()
        con.close()
        self.fetch_data()
        self.clear()
        messagebox.showinfo("successful", "Record has been deleted.")

    def search_data(self):

        con = pymysql.connect(host="localhost", user="group1", password="@2020Lab3", database="ECCD")
        cur = con.cursor()

        sql = "SELECT * FROM CHILD, GUARDIAN WHERE Id = childId and Id = %s"
        adr = self.search_txt.get()

        val = cur.execute(sql, adr)
        if (not val):
            messagebox.showinfo("No", "Not available!")

        rows = cur.fetchall()
        if len(rows) != 0:
            self.Student_table.delete(*self.Student_table.get_children())
            for row in rows:
                self.Student_table.insert('', END, values=row)

            con.commit()
        con.close()


root = Tk()
obj = Student(root)
root.mainloop()
