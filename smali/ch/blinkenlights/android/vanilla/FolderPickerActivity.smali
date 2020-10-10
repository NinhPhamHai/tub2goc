.class public abstract Lch/blinkenlights/android/vanilla/FolderPickerActivity;
.super Landroid/app/Activity;
.source "FolderPickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field private mListAdapter:Lch/blinkenlights/android/vanilla/FolderPickerAdapter;

.field private mListView:Lcom/mobeta/android/dslv/DragSortListView;

.field private mPathDisplay:Landroid/widget/EditText;

.field private mSaveButton:Landroid/widget/Button;

.field private final mSaveButtonClickListener:Landroid/view/View$OnClickListener;

.field private final mTextWatcher:Landroid/text/TextWatcher;

.field private mTritastic:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 92
    new-instance v0, Lch/blinkenlights/android/vanilla/FolderPickerActivity$1;

    invoke-direct {v0, p0}, Lch/blinkenlights/android/vanilla/FolderPickerActivity$1;-><init>(Lch/blinkenlights/android/vanilla/FolderPickerActivity;)V

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/FolderPickerActivity;->mSaveButtonClickListener:Landroid/view/View$OnClickListener;

    .line 103
    new-instance v0, Lch/blinkenlights/android/vanilla/FolderPickerActivity$2;

    invoke-direct {v0, p0}, Lch/blinkenlights/android/vanilla/FolderPickerActivity$2;-><init>(Lch/blinkenlights/android/vanilla/FolderPickerActivity;)V

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/FolderPickerActivity;->mTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lch/blinkenlights/android/vanilla/FolderPickerActivity;)Lch/blinkenlights/android/vanilla/FolderPickerAdapter;
    .locals 0

    .line 40
    iget-object p0, p0, Lch/blinkenlights/android/vanilla/FolderPickerActivity;->mListAdapter:Lch/blinkenlights/android/vanilla/FolderPickerAdapter;

    return-object p0
.end method


# virtual methods
.method public enableTritasticSelect(ZLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 137
    iput-boolean p1, p0, Lch/blinkenlights/android/vanilla/FolderPickerActivity;->mTritastic:Z

    .line 138
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FolderPickerActivity;->mListAdapter:Lch/blinkenlights/android/vanilla/FolderPickerAdapter;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    invoke-virtual {v0, p2}, Lch/blinkenlights/android/vanilla/FolderPickerAdapter;->setIncludedDirs(Ljava/util/ArrayList;)V

    .line 139
    iget-object p2, p0, Lch/blinkenlights/android/vanilla/FolderPickerActivity;->mListAdapter:Lch/blinkenlights/android/vanilla/FolderPickerAdapter;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p3, v1

    :goto_1
    invoke-virtual {p2, p3}, Lch/blinkenlights/android/vanilla/FolderPickerAdapter;->setExcludedDirs(Ljava/util/ArrayList;)V

    .line 140
    iget-object p2, p0, Lch/blinkenlights/android/vanilla/FolderPickerActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    if-eqz p1, :cond_2

    move-object v1, p0

    :cond_2
    invoke-virtual {p2, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 141
    iget-object p2, p0, Lch/blinkenlights/android/vanilla/FolderPickerActivity;->mSaveButton:Landroid/widget/Button;

    if-eqz p1, :cond_3

    sget p3, Lch/blinkenlights/android/vanilla/R$string;->save:I

    goto :goto_2

    :cond_3
    sget p3, Lch/blinkenlights/android/vanilla/R$string;->select:I

    :goto_2
    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(I)V

    if-eqz p1, :cond_4

    .line 144
    sget p1, Lch/blinkenlights/android/vanilla/R$string;->hint_long_press_to_modify_folder:I

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 69
    sget v0, Lch/blinkenlights/android/vanilla/R$style;->BackActionBar:I

    invoke-static {p0, v0}, Lch/blinkenlights/android/vanilla/ThemeHelper;->setTheme(Landroid/content/Context;I)V

    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    sget p1, Lch/blinkenlights/android/vanilla/R$layout;->folderpicker_content:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 74
    new-instance p1, Lch/blinkenlights/android/vanilla/FolderPickerAdapter;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lch/blinkenlights/android/vanilla/FolderPickerAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lch/blinkenlights/android/vanilla/FolderPickerActivity;->mListAdapter:Lch/blinkenlights/android/vanilla/FolderPickerAdapter;

    .line 75
    sget p1, Lch/blinkenlights/android/vanilla/R$id;->list:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mobeta/android/dslv/DragSortListView;

    iput-object p1, p0, Lch/blinkenlights/android/vanilla/FolderPickerActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    .line 76
    sget p1, Lch/blinkenlights/android/vanilla/R$id;->path_display:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lch/blinkenlights/android/vanilla/FolderPickerActivity;->mPathDisplay:Landroid/widget/EditText;

    .line 77
    sget p1, Lch/blinkenlights/android/vanilla/R$id;->save_button:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lch/blinkenlights/android/vanilla/FolderPickerActivity;->mSaveButton:Landroid/widget/Button;

    .line 79
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/FolderPickerActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/FolderPickerActivity;->mListAdapter:Lch/blinkenlights/android/vanilla/FolderPickerAdapter;

    invoke-virtual {p1, v1}, Lcom/mobeta/android/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/FolderPickerActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 82
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/FolderPickerActivity;->mPathDisplay:Landroid/widget/EditText;

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/FolderPickerActivity;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 83
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/FolderPickerActivity;->mSaveButton:Landroid/widget/Button;

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/FolderPickerActivity;->mSaveButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 86
    invoke-virtual {p0, v0, p1, p1}, Lch/blinkenlights/android/vanilla/FolderPickerActivity;->enableTritasticSelect(ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public abstract onFolderPicked(Ljava/io/File;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 193
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/FolderPickerActivity;->mListAdapter:Lch/blinkenlights/android/vanilla/FolderPickerAdapter;

    invoke-virtual {p1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lch/blinkenlights/android/vanilla/FolderPickerAdapter$Item;

    .line 194
    iget-object p2, p0, Lch/blinkenlights/android/vanilla/FolderPickerActivity;->mListAdapter:Lch/blinkenlights/android/vanilla/FolderPickerAdapter;

    invoke-virtual {p2}, Lch/blinkenlights/android/vanilla/FolderPickerAdapter;->getCurrentDir()Ljava/io/File;

    move-result-object p2

    .line 197
    iget-object p3, p1, Lch/blinkenlights/android/vanilla/FolderPickerAdapter$Item;->file:Ljava/io/File;

    if-nez p3, :cond_0

    .line 199
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    goto :goto_0

    .line 202
    :cond_0
    new-instance p3, Ljava/io/File;

    iget-object p1, p1, Lch/blinkenlights/android/vanilla/FolderPickerAdapter$Item;->name:Ljava/lang/String;

    invoke-direct {p3, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p1, p3

    :goto_0
    if-eqz p1, :cond_1

    .line 206
    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/FolderPickerActivity;->setCurrentDir(Ljava/io/File;)V

    :cond_1
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 214
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/FolderPickerActivity;->mListAdapter:Lch/blinkenlights/android/vanilla/FolderPickerAdapter;

    invoke-virtual {p1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lch/blinkenlights/android/vanilla/FolderPickerAdapter$Item;

    .line 216
    iget-object p2, p1, Lch/blinkenlights/android/vanilla/FolderPickerAdapter$Item;->file:Ljava/io/File;

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return p3

    .line 219
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x3

    .line 220
    new-array p4, p4, [Ljava/lang/CharSequence;

    .line 221
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    sget v0, Lch/blinkenlights/android/vanilla/R$string;->folder_include:I

    invoke-virtual {p5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    aput-object p5, p4, p3

    .line 222
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p5, Lch/blinkenlights/android/vanilla/R$string;->folder_exclude:I

    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 p5, 0x1

    aput-object p3, p4, p5

    const/4 p3, 0x2

    .line 223
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lch/blinkenlights/android/vanilla/R$string;->folder_neutral:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p4, p3

    .line 226
    new-instance p3, Landroid/app/AlertDialog$Builder;

    invoke-direct {p3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object p1, p1, Lch/blinkenlights/android/vanilla/FolderPickerAdapter$Item;->name:Ljava/lang/String;

    .line 227
    invoke-virtual {p3, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p3, Lch/blinkenlights/android/vanilla/FolderPickerActivity$3;

    invoke-direct {p3, p0, p2}, Lch/blinkenlights/android/vanilla/FolderPickerActivity$3;-><init>(Lch/blinkenlights/android/vanilla/FolderPickerActivity;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p1, p4, p3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 248
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return p5
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 180
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 181
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 184
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method setCurrentDir(Ljava/io/File;)V
    .locals 2

    .line 153
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FolderPickerActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 154
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FolderPickerActivity;->mListAdapter:Lch/blinkenlights/android/vanilla/FolderPickerAdapter;

    invoke-virtual {v0, p1}, Lch/blinkenlights/android/vanilla/FolderPickerAdapter;->setCurrentDir(Ljava/io/File;)V

    .line 155
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FolderPickerActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 157
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/FolderPickerActivity;->mPathDisplay:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 164
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FolderPickerActivity;->mPathDisplay:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FolderPickerActivity;->mPathDisplay:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method
