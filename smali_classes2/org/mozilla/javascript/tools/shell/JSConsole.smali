.class public Lorg/mozilla/javascript/tools/shell/JSConsole;
.super Ljavax/swing/JFrame;
.source "JSConsole.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# static fields
.field static final serialVersionUID:J = 0x2367c621635c1accL


# instance fields
.field private CWD:Ljava/io/File;

.field private consoleTextArea:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

.field private dlg:Ljavax/swing/JFileChooser;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "Rhino JavaScript Console"

    .line 89
    invoke-direct {v0, v1}, Ljavax/swing/JFrame;-><init>(Ljava/lang/String;)V

    .line 90
    new-instance v1, Ljavax/swing/JMenuBar;

    invoke-direct {v1}, Ljavax/swing/JMenuBar;-><init>()V

    .line 91
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/tools/shell/JSConsole;->createFileChooser()V

    const-string v2, "Exit"

    const-string v3, "Load..."

    .line 92
    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "Load"

    .line 93
    filled-new-array {v4, v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    .line 94
    new-array v4, v4, [C

    fill-array-data v4, :array_0

    const-string v5, "Cut"

    const-string v6, "Copy"

    const-string v7, "Paste"

    .line 95
    filled-new-array {v5, v6, v7}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    .line 96
    new-array v7, v6, [C

    fill-array-data v7, :array_1

    const-string v8, "Metal"

    const-string v9, "Windows"

    const-string v10, "Motif"

    .line 97
    filled-new-array {v8, v9, v10}, [Ljava/lang/String;

    move-result-object v8

    .line 98
    new-array v6, v6, [Z

    fill-array-data v6, :array_2

    .line 99
    new-instance v9, Ljavax/swing/JMenu;

    const-string v10, "File"

    invoke-direct {v9, v10}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    const/16 v10, 0x46

    .line 100
    invoke-virtual {v9, v10}, Ljavax/swing/JMenu;->setMnemonic(C)V

    .line 101
    new-instance v10, Ljavax/swing/JMenu;

    const-string v11, "Edit"

    invoke-direct {v10, v11}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x45

    .line 102
    invoke-virtual {v10, v11}, Ljavax/swing/JMenu;->setMnemonic(C)V

    .line 103
    new-instance v11, Ljavax/swing/JMenu;

    const-string v12, "Platform"

    invoke-direct {v11, v12}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    const/16 v12, 0x50

    .line 104
    invoke-virtual {v11, v12}, Ljavax/swing/JMenu;->setMnemonic(C)V

    const/4 v14, 0x0

    .line 105
    :goto_0
    array-length v15, v3

    if-ge v14, v15, :cond_0

    .line 106
    new-instance v15, Ljavax/swing/JMenuItem;

    aget-object v13, v3, v14

    aget-char v12, v4, v14

    invoke-direct {v15, v13, v12}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;I)V

    .line 108
    aget-object v12, v2, v14

    invoke-virtual {v15, v12}, Ljavax/swing/JMenuItem;->setActionCommand(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v15, v0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 110
    invoke-virtual {v9, v15}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    add-int/lit8 v14, v14, 0x1

    const/16 v12, 0x50

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 112
    :goto_1
    array-length v3, v5

    if-ge v2, v3, :cond_1

    .line 113
    new-instance v3, Ljavax/swing/JMenuItem;

    aget-object v4, v5, v2

    aget-char v12, v7, v2

    invoke-direct {v3, v4, v12}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;I)V

    .line 115
    invoke-virtual {v3, v0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 116
    invoke-virtual {v10, v3}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 118
    :cond_1
    new-instance v2, Ljavax/swing/ButtonGroup;

    invoke-direct {v2}, Ljavax/swing/ButtonGroup;-><init>()V

    const/4 v3, 0x0

    .line 119
    :goto_2
    array-length v4, v8

    if-ge v3, v4, :cond_2

    .line 120
    new-instance v4, Ljavax/swing/JRadioButtonMenuItem;

    aget-object v5, v8, v3

    aget-boolean v7, v6, v3

    invoke-direct {v4, v5, v7}, Ljavax/swing/JRadioButtonMenuItem;-><init>(Ljava/lang/String;Z)V

    .line 122
    invoke-virtual {v2, v4}, Ljavax/swing/ButtonGroup;->add(Ljavax/swing/AbstractButton;)V

    .line 123
    invoke-virtual {v4, v0}, Ljavax/swing/JRadioButtonMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 124
    invoke-virtual {v11, v4}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 126
    :cond_2
    invoke-virtual {v1, v9}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    .line 127
    invoke-virtual {v1, v10}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    .line 128
    invoke-virtual {v1, v11}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    .line 129
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/tools/shell/JSConsole;->setJMenuBar(Ljavax/swing/JMenuBar;)V

    .line 130
    new-instance v1, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;-><init>([Ljava/lang/String;)V

    iput-object v1, v0, Lorg/mozilla/javascript/tools/shell/JSConsole;->consoleTextArea:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    .line 131
    new-instance v1, Ljavax/swing/JScrollPane;

    iget-object v3, v0, Lorg/mozilla/javascript/tools/shell/JSConsole;->consoleTextArea:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    invoke-direct {v1, v3}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    .line 132
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/tools/shell/JSConsole;->setContentPane(Ljava/awt/Container;)V

    .line 133
    iget-object v1, v0, Lorg/mozilla/javascript/tools/shell/JSConsole;->consoleTextArea:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    const/16 v3, 0x18

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->setRows(I)V

    .line 134
    iget-object v1, v0, Lorg/mozilla/javascript/tools/shell/JSConsole;->consoleTextArea:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    const/16 v3, 0x50

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->setColumns(I)V

    .line 135
    new-instance v1, Lorg/mozilla/javascript/tools/shell/JSConsole$2;

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/tools/shell/JSConsole$2;-><init>(Lorg/mozilla/javascript/tools/shell/JSConsole;)V

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/tools/shell/JSConsole;->addWindowListener(Ljava/awt/event/WindowListener;)V

    .line 141
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/tools/shell/JSConsole;->pack()V

    const/4 v1, 0x1

    .line 142
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/tools/shell/JSConsole;->setVisible(Z)V

    .line 146
    iget-object v1, v0, Lorg/mozilla/javascript/tools/shell/JSConsole;->consoleTextArea:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    invoke-virtual {v1}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->getIn()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lorg/mozilla/javascript/tools/shell/Main;->setIn(Ljava/io/InputStream;)V

    .line 147
    iget-object v1, v0, Lorg/mozilla/javascript/tools/shell/JSConsole;->consoleTextArea:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    invoke-virtual {v1}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->getOut()Ljava/io/PrintStream;

    move-result-object v1

    invoke-static {v1}, Lorg/mozilla/javascript/tools/shell/Main;->setOut(Ljava/io/PrintStream;)V

    .line 148
    iget-object v1, v0, Lorg/mozilla/javascript/tools/shell/JSConsole;->consoleTextArea:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    invoke-virtual {v1}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->getErr()Ljava/io/PrintStream;

    move-result-object v1

    invoke-static {v1}, Lorg/mozilla/javascript/tools/shell/Main;->setErr(Ljava/io/PrintStream;)V

    .line 149
    invoke-static/range {p1 .. p1}, Lorg/mozilla/javascript/tools/shell/Main;->main([Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 2
        0x4cs
        0x58s
    .end array-data

    :array_1
    .array-data 2
        0x54s
        0x43s
        0x50s
    .end array-data

    nop

    :array_2
    .array-data 1
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    .line 56
    new-instance v0, Lorg/mozilla/javascript/tools/shell/JSConsole;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/tools/shell/JSConsole;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 3

    .line 153
    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getActionCommand()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Load"

    .line 155
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/shell/JSConsole;->chooseFile()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    const/16 v0, 0x5c

    const/16 v1, 0x2f

    .line 158
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 159
    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/JSConsole;->consoleTextArea:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\");"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->eval(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    const-string v0, "Exit"

    .line 161
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 162
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_1

    :cond_1
    const-string v0, "Cut"

    .line 163
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    iget-object p1, p0, Lorg/mozilla/javascript/tools/shell/JSConsole;->consoleTextArea:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->cut()V

    goto :goto_1

    :cond_2
    const-string v0, "Copy"

    .line 165
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 166
    iget-object p1, p0, Lorg/mozilla/javascript/tools/shell/JSConsole;->consoleTextArea:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->copy()V

    goto :goto_1

    :cond_3
    const-string v0, "Paste"

    .line 167
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 168
    iget-object p1, p0, Lorg/mozilla/javascript/tools/shell/JSConsole;->consoleTextArea:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->paste()V

    goto :goto_1

    :cond_4
    const-string v0, "Metal"

    .line 170
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "javax.swing.plaf.metal.MetalLookAndFeel"

    goto :goto_0

    :cond_5
    const-string v0, "Windows"

    .line 172
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "com.sun.java.swing.plaf.windows.WindowsLookAndFeel"

    goto :goto_0

    :cond_6
    const-string v0, "Motif"

    .line 174
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "com.sun.java.swing.plaf.motif.MotifLookAndFeel"

    goto :goto_0

    :cond_7
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_8

    .line 179
    :try_start_0
    invoke-static {p1}, Ljavax/swing/UIManager;->setLookAndFeel(Ljava/lang/String;)V

    .line 180
    invoke-static {p0}, Ljavax/swing/SwingUtilities;->updateComponentTreeUI(Ljava/awt/Component;)V

    .line 181
    iget-object p1, p0, Lorg/mozilla/javascript/tools/shell/JSConsole;->consoleTextArea:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->postUpdateUI()V

    .line 184
    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/shell/JSConsole;->createFileChooser()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 186
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Platform"

    invoke-static {p0, p1, v0, v1}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    :cond_8
    :goto_1
    return-void
.end method

.method public chooseFile()Ljava/lang/String;
    .locals 3

    .line 36
    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/JSConsole;->CWD:Ljava/io/File;

    if-nez v0, :cond_0

    const-string v0, "user.dir"

    .line 37
    invoke-static {v0}, Lorg/mozilla/javascript/SecurityUtilities;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/mozilla/javascript/tools/shell/JSConsole;->CWD:Ljava/io/File;

    .line 42
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/JSConsole;->CWD:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 43
    iget-object v1, p0, Lorg/mozilla/javascript/tools/shell/JSConsole;->dlg:Ljavax/swing/JFileChooser;

    invoke-virtual {v1, v0}, Ljavax/swing/JFileChooser;->setCurrentDirectory(Ljava/io/File;)V

    .line 45
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/JSConsole;->dlg:Ljavax/swing/JFileChooser;

    const-string v1, "Select a file to load"

    invoke-virtual {v0, v1}, Ljavax/swing/JFileChooser;->setDialogTitle(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/JSConsole;->dlg:Ljavax/swing/JFileChooser;

    invoke-virtual {v0, p0}, Ljavax/swing/JFileChooser;->showOpenDialog(Ljava/awt/Component;)I

    move-result v0

    if-nez v0, :cond_2

    .line 48
    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/JSConsole;->dlg:Ljavax/swing/JFileChooser;

    invoke-virtual {v0}, Ljavax/swing/JFileChooser;->getSelectedFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 49
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/mozilla/javascript/tools/shell/JSConsole;->dlg:Ljavax/swing/JFileChooser;

    invoke-virtual {v2}, Ljavax/swing/JFileChooser;->getSelectedFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/mozilla/javascript/tools/shell/JSConsole;->CWD:Ljava/io/File;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public createFileChooser()V
    .locals 2

    .line 60
    new-instance v0, Ljavax/swing/JFileChooser;

    invoke-direct {v0}, Ljavax/swing/JFileChooser;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/tools/shell/JSConsole;->dlg:Ljavax/swing/JFileChooser;

    .line 61
    new-instance v0, Lorg/mozilla/javascript/tools/shell/JSConsole$1;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/tools/shell/JSConsole$1;-><init>(Lorg/mozilla/javascript/tools/shell/JSConsole;)V

    .line 84
    iget-object v1, p0, Lorg/mozilla/javascript/tools/shell/JSConsole;->dlg:Ljavax/swing/JFileChooser;

    invoke-virtual {v1, v0}, Ljavax/swing/JFileChooser;->addChoosableFileFilter(Ljavax/swing/filechooser/FileFilter;)V

    return-void
.end method
