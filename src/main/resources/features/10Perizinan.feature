Feature: Perizinan Page Test
  #  Halaman Perizinan #
  Scenario: TP001 User Mengunjungi Halaman Perizinan menggunakan Sidebar Menu
    When User Klik Menu Perizinan di Sidebar
    Then User Berhasil Menampilkan Halaman Perizinan

  # Pencarian data Perizinan #


  # Halaman Input Perizinan #
  Scenario: TP002 User mengunjungi halaman Input Data Perizinan
    When User Klik Tombol Input Data
    Then User Berhasil Menampilkan Halaman Input Data Perizinan

#  # Input Data Perizinan # POSITIF
#  Scenario: TP003 User Berhasil Menambahkan Data Perizinan
#    #When User Klik Tombol Input Data
#    When User Input Nomor Perizinan
#    And User Input Nama Perizinan
#    And User Input Tanggal Mulai Perizinan
#    And User Input Tanggal Berakhir Perizinan
#    And User Input Diterbitkan Oleh
#    And User Input Deskripsi
#    And User Input Pemilik Dokumen
#    And User Input Dibuat Oleh
#    And User Input Tim Terkait
#    And User Input Tanggal Reminder
#    And User Input Jenis Media
#    And User Input Jumlah Dokumen
#    And User Pilih File PDF Dokumen di Explorer
#    And User Input Share
#    And User Input Status Dokumen
#    And User Klik Simpan
#    Then User Berhasil Menyimpan Data
#
## Input Data Perizinan # NEGATIF
#  Scenario: TP004 User Tidak Memasukkan Data Apapun
#    When User Klik Tombol Input Data
#    And User Klik Simpan
    When User Klik Simpan
    Then Menampilkan Alert di Kolom Nomor Dokumen

  Scenario: TP005 User Tidak input Nomor Perizinan
    Given Refresh Halaman
    When User Input Nama Perizinan
    And User Input Tanggal Mulai Perizinan
    And User Input Tanggal Berakhir Perizinan
    And User Input Diterbitkan Oleh
    And User Input Deskripsi
    And User Input Pemilik Dokumen
    And User Input Dibuat Oleh
    And User Input Tim Terkait
    And User Input Tanggal Reminder
    And User Input Jenis Media
    And User Klik Simpan
    Then Menampilkan Alert di Kolom Nomor Dokumen

  Scenario: TP006 User Tidak Input Nama Perizinan
    Given Refresh Halaman
    When User Input Nomor Perizinan
    And User Klik Simpan
    Then Menampilkan Alert di Kolom Nama Perizinan

  Scenario: TP007 User Tidak Input Tanggal Mulai
    Given Refresh Halaman
    When User Input Nomor Perizinan
    And User Input Nama Perizinan
    And User Klik Simpan
    Then Menampilkan Alert di Kolom Tanggal Mulai

  Scenario: TP008 User Tidak Input Tanggal Akhir
    Given Refresh Halaman
    When User Input Nomor Perizinan
    And User Input Nama Perizinan
    And User Input Tanggal Mulai Perizinan
    And User Klik Simpan
    Then Menampilkan Alert di Kolom Tanggal Akhir

  Scenario: TP009 User Tidak Input Diterbitkan Oleh
    Given Refresh Halaman
    When User Input Nomor Perizinan
    And User Input Nama Perizinan
    And User Input Tanggal Mulai Perizinan
    And User Input Tanggal Berakhir Perizinan
    And User Klik Simpan
    Then Menampilkan Alert di Kolom Diterbitkan Oleh

  Scenario: TP010 User Tidak Input Deskripsi
    Given Refresh Halaman
    When User Input Nomor Perizinan
    And User Input Nama Perizinan
    And User Input Tanggal Mulai Perizinan
    And User Input Tanggal Berakhir Perizinan
    And User Input Diterbitkan Oleh
    And User Klik Simpan
    Then Menampilkan Alert di Kolom Deskripsi

  Scenario: TP011 User Tidak Input Pemilik Dokumen
    Given Refresh Halaman
    When User Input Nomor Perizinan
    And User Input Nama Perizinan
    And User Input Tanggal Mulai Perizinan
    And User Input Tanggal Berakhir Perizinan
    And User Input Diterbitkan Oleh
    And User Input Deskripsi
    And User Klik Simpan
    Then Menampilkan Alert di Kolom Pemilik Dokumen

  Scenario: TP012 User Tidak Input Dibuat Oleh
    Given Refresh Halaman
    When User Input Nomor Perizinan
    And User Input Nama Perizinan
    And User Input Tanggal Mulai Perizinan
    And User Input Tanggal Berakhir Perizinan
    And User Input Diterbitkan Oleh
    And User Input Deskripsi
    And User Input Pemilik Dokumen
    And User Klik Simpan
    Then Menampilkan Alert di Kolom Dibuat Oleh

  Scenario: TP013 User Tidak Input Tim Terkait
    Given Refresh Halaman
    When User Input Nomor Perizinan
    And User Input Nama Perizinan
    And User Input Tanggal Mulai Perizinan
    And User Input Tanggal Berakhir Perizinan
    And User Input Diterbitkan Oleh
    And User Input Deskripsi
    And User Input Pemilik Dokumen
    And User Input Dibuat Oleh
    And User Klik Simpan
    Then Menampilkan Alert di Kolom Tim Terkait

  Scenario: TP014 User Tidak Input Tanggal Reminder
    Given Refresh Halaman
    When User Input Nomor Perizinan
    And User Input Nama Perizinan
    And User Input Tanggal Mulai Perizinan
    And User Input Tanggal Berakhir Perizinan
    And User Input Diterbitkan Oleh
    And User Input Deskripsi
    And User Input Pemilik Dokumen
    And User Input Dibuat Oleh
    And User Input Tim Terkait
    And User Klik Simpan
    Then Menampilkan Alert di Kolom Tanggal Reminder

  Scenario: TP015 User Tidak Input Jenis Media
    Given Refresh Halaman
    When User Input Nomor Perizinan
    And User Input Nama Perizinan
    And User Input Tanggal Mulai Perizinan
    And User Input Tanggal Berakhir Perizinan
    And User Input Diterbitkan Oleh
    And User Input Deskripsi
    And User Input Pemilik Dokumen
    And User Input Dibuat Oleh
    And User Input Tim Terkait
    And User Input Tanggal Reminder
    And User Klik Simpan
    Then Menampilkan Alert di Kolom Jenis Media

  Scenario: TP016 User Input Tanggal Berakhir Di Bawah Tanggal Mulai
    Given Refresh Halaman
    When User Input Nomor Perizinan
    And User Input Nama Perizinan
    And User Input Invalid Tanggal Mulai Perizinan
    And User Input Invalid Tanggal Berakhir Perizinan
    And User Input Diterbitkan Oleh
    And User Input Deskripsi
    And User Input Pemilik Dokumen
    And User Input Dibuat Oleh
    And User Input Tim Terkait
    And User Input Tanggal Reminder
    And User Input Jenis Media
    #And User Klik Simpan
    Then Menampilkan Alert Tanggal Akhir Tidak boleh Lebih Kecil

  Scenario: TP017 User Input Tanggal Reminder Di Bawah Tanggal Mulai
    Given Refresh Halaman
    When User Input Nomor Perizinan
    And User Input Nama Perizinan
    And User Input Invalid Tanggal Mulai Perizinan
    And User Input Invalid Tanggal Berakhir Perizinan
    And User Input Diterbitkan Oleh
    And User Input Deskripsi
    And User Input Pemilik Dokumen
    And User Input Dibuat Oleh
    And User Input Tim Terkait
    And User Input Invalid Tanggal Reminder
    And User Input Jenis Media
    #And User Klik Simpan
    Then Menampilkan Alert di Kolom Tanggal Reminder Tidak Boleh Lebih Kecil

  Scenario: TP018 User Menambahkan File PDF
    Given Refresh Halaman
    When User Input Nomor Perizinan
    And User Input Nama Perizinan
    And User Input Tanggal Mulai Perizinan
    And User Input Tanggal Berakhir Perizinan
    And User Input Diterbitkan Oleh
    And User Input Deskripsi
    And User Input Pemilik Dokumen
    And User Input Dibuat Oleh
    And User Input Tim Terkait
    And User Input Tanggal Reminder
    And User Input Jenis Media
    And User Input Jumlah Dokumen
    And User Pilih File PDF Dokumen di Explorer
    Then User Berhasil Diupload File PDF

  Scenario: TP019 User Menambahkan File DOCX
    Given Refresh Halaman
    When User Input Nomor Perizinan
    And User Input Nama Perizinan
    And User Input Tanggal Mulai Perizinan
    And User Input Tanggal Berakhir Perizinan
    And User Input Diterbitkan Oleh
    And User Input Deskripsi
    And User Input Pemilik Dokumen
    And User Input Dibuat Oleh
    And User Input Tim Terkait
    And User Input Tanggal Reminder
    And User Input Jenis Media
    And User Input Jumlah Dokumen
    And User Pilih File DOCX Dokumen di Explorer
    Then User Berhasil Diupload File DOCX

  Scenario: TP020 User Hanya Memasukkan Data Kosong dan Invalid
    Given Refresh Halaman
    When User Input Invalid Nomor Perizinan
    And User Input Invalid Nama Perizinan
    And User Input Invalid Tanggal Mulai Perizinan Today
    And User Input Invalid Tanggal Berakhir Perizinan Today
    And User Input Invalid Diterbitkan Oleh
    And User Input Invalid Deskripsi
    And User Input Invalid Pemilik Dokumen
    And User Input Invalid Dibuat Oleh
    And User Input Invalid Tim Terkait
    And User Input Invalid Tanggal Reminder Today
    And User Input Invalid Jenis Media
    And User Klik Simpan
    Then Menampilkan Alert Data Tidak Boleh Kosong

