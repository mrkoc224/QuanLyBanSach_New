﻿
namespace QuanLyBanSach_new.Forms
{
    partial class Form_EditBook_Admin
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.textBoxBookID = new System.Windows.Forms.TextBox();
            this.label13 = new System.Windows.Forms.Label();
            this.textBoxPublisherID = new System.Windows.Forms.TextBox();
            this.label12 = new System.Windows.Forms.Label();
            this.buttonAddNewPublisher = new System.Windows.Forms.Button();
            this.textBoxCategoryID = new System.Windows.Forms.TextBox();
            this.textBoxAuthorID = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.comboBoxCategory = new System.Windows.Forms.ComboBox();
            this.buttonAddNewAuthor = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.richTextBox = new System.Windows.Forms.RichTextBox();
            this.comboBoxPublisher = new System.Windows.Forms.ComboBox();
            this.comboBoxAuthor = new System.Windows.Forms.ComboBox();
            this.buttonNewCategory = new System.Windows.Forms.Button();
            this.buttonClear = new System.Windows.Forms.Button();
            this.buttonSave = new System.Windows.Forms.Button();
            this.textBoxPrice = new System.Windows.Forms.TextBox();
            this.textBoxBookTitle = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label11 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.textBoxQuantity = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // textBoxBookID
            // 
            this.textBoxBookID.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.textBoxBookID.Location = new System.Drawing.Point(656, 85);
            this.textBoxBookID.Name = "textBoxBookID";
            this.textBoxBookID.ReadOnly = true;
            this.textBoxBookID.Size = new System.Drawing.Size(63, 26);
            this.textBoxBookID.TabIndex = 94;
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label13.Location = new System.Drawing.Point(583, 87);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(72, 19);
            this.label13.TabIndex = 93;
            this.label13.Text = "BookID:";
            // 
            // textBoxPublisherID
            // 
            this.textBoxPublisherID.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.textBoxPublisherID.Location = new System.Drawing.Point(656, 159);
            this.textBoxPublisherID.Name = "textBoxPublisherID";
            this.textBoxPublisherID.ReadOnly = true;
            this.textBoxPublisherID.Size = new System.Drawing.Size(63, 26);
            this.textBoxPublisherID.TabIndex = 92;
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label12.Location = new System.Drawing.Point(549, 159);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(104, 19);
            this.label12.TabIndex = 91;
            this.label12.Text = "PublisherID:";
            // 
            // buttonAddNewPublisher
            // 
            this.buttonAddNewPublisher.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(71)))), ((int)(((byte)(160)))));
            this.buttonAddNewPublisher.FlatAppearance.BorderSize = 0;
            this.buttonAddNewPublisher.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.buttonAddNewPublisher.Font = new System.Drawing.Font("Century Gothic", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.buttonAddNewPublisher.ForeColor = System.Drawing.Color.White;
            this.buttonAddNewPublisher.Location = new System.Drawing.Point(502, 157);
            this.buttonAddNewPublisher.Name = "buttonAddNewPublisher";
            this.buttonAddNewPublisher.Size = new System.Drawing.Size(33, 29);
            this.buttonAddNewPublisher.TabIndex = 90;
            this.buttonAddNewPublisher.Text = "+";
            this.buttonAddNewPublisher.UseVisualStyleBackColor = false;
            this.buttonAddNewPublisher.Click += new System.EventHandler(this.buttonAddNewPublisher_Click);
            // 
            // textBoxCategoryID
            // 
            this.textBoxCategoryID.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.textBoxCategoryID.Location = new System.Drawing.Point(656, 201);
            this.textBoxCategoryID.Name = "textBoxCategoryID";
            this.textBoxCategoryID.ReadOnly = true;
            this.textBoxCategoryID.Size = new System.Drawing.Size(63, 26);
            this.textBoxCategoryID.TabIndex = 89;
            // 
            // textBoxAuthorID
            // 
            this.textBoxAuthorID.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.textBoxAuthorID.Location = new System.Drawing.Point(656, 120);
            this.textBoxAuthorID.Name = "textBoxAuthorID";
            this.textBoxAuthorID.ReadOnly = true;
            this.textBoxAuthorID.Size = new System.Drawing.Size(63, 26);
            this.textBoxAuthorID.TabIndex = 88;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.Location = new System.Drawing.Point(549, 205);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(101, 19);
            this.label9.TabIndex = 87;
            this.label9.Text = "CategoryID:";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(569, 124);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(83, 19);
            this.label5.TabIndex = 86;
            this.label5.Text = "AuthorID:";
            // 
            // comboBoxCategory
            // 
            this.comboBoxCategory.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.comboBoxCategory.FormattingEnabled = true;
            this.comboBoxCategory.Location = new System.Drawing.Point(224, 199);
            this.comboBoxCategory.Name = "comboBoxCategory";
            this.comboBoxCategory.Size = new System.Drawing.Size(268, 26);
            this.comboBoxCategory.TabIndex = 85;
            this.comboBoxCategory.SelectedValueChanged += new System.EventHandler(this.comboBoxCategory_SelectedValueChanged);
            // 
            // buttonAddNewAuthor
            // 
            this.buttonAddNewAuthor.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(71)))), ((int)(((byte)(160)))));
            this.buttonAddNewAuthor.FlatAppearance.BorderSize = 0;
            this.buttonAddNewAuthor.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.buttonAddNewAuthor.Font = new System.Drawing.Font("Century Gothic", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.buttonAddNewAuthor.ForeColor = System.Drawing.Color.White;
            this.buttonAddNewAuthor.Location = new System.Drawing.Point(502, 119);
            this.buttonAddNewAuthor.Name = "buttonAddNewAuthor";
            this.buttonAddNewAuthor.Size = new System.Drawing.Size(33, 29);
            this.buttonAddNewAuthor.TabIndex = 84;
            this.buttonAddNewAuthor.Text = "+";
            this.buttonAddNewAuthor.UseVisualStyleBackColor = false;
            this.buttonAddNewAuthor.Click += new System.EventHandler(this.buttonAddNewAuthor_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(498, 239);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(44, 19);
            this.label1.TabIndex = 83;
            this.label1.Text = "VND";
            // 
            // richTextBox
            // 
            this.richTextBox.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.richTextBox.Location = new System.Drawing.Point(224, 318);
            this.richTextBox.Name = "richTextBox";
            this.richTextBox.Size = new System.Drawing.Size(495, 96);
            this.richTextBox.TabIndex = 82;
            this.richTextBox.Text = "";
            // 
            // comboBoxPublisher
            // 
            this.comboBoxPublisher.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.comboBoxPublisher.FormattingEnabled = true;
            this.comboBoxPublisher.Location = new System.Drawing.Point(224, 157);
            this.comboBoxPublisher.Name = "comboBoxPublisher";
            this.comboBoxPublisher.Size = new System.Drawing.Size(268, 26);
            this.comboBoxPublisher.TabIndex = 81;
            this.comboBoxPublisher.SelectedValueChanged += new System.EventHandler(this.comboBoxPublisher_SelectedValueChanged);
            // 
            // comboBoxAuthor
            // 
            this.comboBoxAuthor.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.comboBoxAuthor.FormattingEnabled = true;
            this.comboBoxAuthor.Location = new System.Drawing.Point(224, 118);
            this.comboBoxAuthor.Name = "comboBoxAuthor";
            this.comboBoxAuthor.Size = new System.Drawing.Size(268, 26);
            this.comboBoxAuthor.TabIndex = 80;
            this.comboBoxAuthor.SelectedValueChanged += new System.EventHandler(this.comboBoxAuthor_SelectedValueChanged);
            // 
            // buttonNewCategory
            // 
            this.buttonNewCategory.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(71)))), ((int)(((byte)(160)))));
            this.buttonNewCategory.FlatAppearance.BorderSize = 0;
            this.buttonNewCategory.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.buttonNewCategory.Font = new System.Drawing.Font("Century Gothic", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.buttonNewCategory.ForeColor = System.Drawing.Color.White;
            this.buttonNewCategory.Location = new System.Drawing.Point(502, 200);
            this.buttonNewCategory.Name = "buttonNewCategory";
            this.buttonNewCategory.Size = new System.Drawing.Size(33, 29);
            this.buttonNewCategory.TabIndex = 79;
            this.buttonNewCategory.Text = "+";
            this.buttonNewCategory.UseVisualStyleBackColor = false;
            this.buttonNewCategory.Click += new System.EventHandler(this.buttonNewCategory_Click);
            // 
            // buttonClear
            // 
            this.buttonClear.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.buttonClear.BackColor = System.Drawing.Color.Red;
            this.buttonClear.FlatAppearance.BorderSize = 0;
            this.buttonClear.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.buttonClear.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.buttonClear.ForeColor = System.Drawing.Color.White;
            this.buttonClear.Location = new System.Drawing.Point(454, 462);
            this.buttonClear.Name = "buttonClear";
            this.buttonClear.Size = new System.Drawing.Size(119, 38);
            this.buttonClear.TabIndex = 78;
            this.buttonClear.Text = "Clear";
            this.buttonClear.UseVisualStyleBackColor = false;
            this.buttonClear.Click += new System.EventHandler(this.buttonClear_Click);
            // 
            // buttonSave
            // 
            this.buttonSave.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.buttonSave.BackColor = System.Drawing.Color.SeaGreen;
            this.buttonSave.FlatAppearance.BorderSize = 0;
            this.buttonSave.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.buttonSave.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.buttonSave.ForeColor = System.Drawing.Color.White;
            this.buttonSave.Location = new System.Drawing.Point(595, 462);
            this.buttonSave.Name = "buttonSave";
            this.buttonSave.Size = new System.Drawing.Size(123, 38);
            this.buttonSave.TabIndex = 77;
            this.buttonSave.Text = "Save";
            this.buttonSave.UseVisualStyleBackColor = false;
            this.buttonSave.Click += new System.EventHandler(this.buttonSave_Click);
            // 
            // textBoxPrice
            // 
            this.textBoxPrice.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.textBoxPrice.Location = new System.Drawing.Point(224, 237);
            this.textBoxPrice.Name = "textBoxPrice";
            this.textBoxPrice.Size = new System.Drawing.Size(268, 26);
            this.textBoxPrice.TabIndex = 75;
            // 
            // textBoxBookTitle
            // 
            this.textBoxBookTitle.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.textBoxBookTitle.Location = new System.Drawing.Point(224, 85);
            this.textBoxBookTitle.Name = "textBoxBookTitle";
            this.textBoxBookTitle.Size = new System.Drawing.Size(311, 26);
            this.textBoxBookTitle.TabIndex = 76;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(116, 281);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(79, 19);
            this.label2.TabIndex = 67;
            this.label2.Text = "Quantity:";
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label11.Location = new System.Drawing.Point(114, 320);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(83, 19);
            this.label11.TabIndex = 66;
            this.label11.Text = "Remarks:";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label10.Location = new System.Drawing.Point(144, 239);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(54, 19);
            this.label10.TabIndex = 68;
            this.label10.Text = "Price:";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label8.Location = new System.Drawing.Point(113, 159);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(88, 19);
            this.label8.TabIndex = 69;
            this.label8.Text = "Publisher:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(112, 204);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(85, 19);
            this.label3.TabIndex = 70;
            this.label3.Text = "Category:";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(131, 120);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(67, 19);
            this.label7.TabIndex = 71;
            this.label7.Text = "Author:";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(109, 87);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(92, 19);
            this.label6.TabIndex = 72;
            this.label6.Text = "Book Title:";
            // 
            // label4
            // 
            this.label4.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Arial", 20.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(71)))), ((int)(((byte)(160)))));
            this.label4.Location = new System.Drawing.Point(384, 16);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(144, 32);
            this.label4.TabIndex = 73;
            this.label4.Text = "Edit Book";
            // 
            // textBoxQuantity
            // 
            this.textBoxQuantity.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.textBoxQuantity.Location = new System.Drawing.Point(224, 278);
            this.textBoxQuantity.Name = "textBoxQuantity";
            this.textBoxQuantity.ReadOnly = true;
            this.textBoxQuantity.Size = new System.Drawing.Size(268, 26);
            this.textBoxQuantity.TabIndex = 95;
            // 
            // Form_EditBook_Admin
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(829, 516);
            this.Controls.Add(this.textBoxQuantity);
            this.Controls.Add(this.textBoxBookID);
            this.Controls.Add(this.label13);
            this.Controls.Add(this.textBoxPublisherID);
            this.Controls.Add(this.label12);
            this.Controls.Add(this.buttonAddNewPublisher);
            this.Controls.Add(this.textBoxCategoryID);
            this.Controls.Add(this.textBoxAuthorID);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.comboBoxCategory);
            this.Controls.Add(this.buttonAddNewAuthor);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.richTextBox);
            this.Controls.Add(this.comboBoxPublisher);
            this.Controls.Add(this.comboBoxAuthor);
            this.Controls.Add(this.buttonNewCategory);
            this.Controls.Add(this.buttonClear);
            this.Controls.Add(this.buttonSave);
            this.Controls.Add(this.textBoxPrice);
            this.Controls.Add(this.textBoxBookTitle);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label11);
            this.Controls.Add(this.label10);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label4);
            this.Name = "Form_EditBook_Admin";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Form_EditBook_Admin";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox textBoxBookID;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.TextBox textBoxPublisherID;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.Button buttonAddNewPublisher;
        private System.Windows.Forms.TextBox textBoxCategoryID;
        private System.Windows.Forms.TextBox textBoxAuthorID;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.ComboBox comboBoxCategory;
        private System.Windows.Forms.Button buttonAddNewAuthor;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.RichTextBox richTextBox;
        private System.Windows.Forms.ComboBox comboBoxPublisher;
        private System.Windows.Forms.ComboBox comboBoxAuthor;
        private System.Windows.Forms.Button buttonNewCategory;
        private System.Windows.Forms.Button buttonClear;
        private System.Windows.Forms.Button buttonSave;
        private System.Windows.Forms.TextBox textBoxPrice;
        private System.Windows.Forms.TextBox textBoxBookTitle;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox textBoxQuantity;
    }
}