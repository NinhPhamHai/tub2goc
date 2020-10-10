.class public Lch/blinkenlights/android/vanilla/FolderPickerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FolderPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/blinkenlights/android/vanilla/FolderPickerAdapter$Item;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lch/blinkenlights/android/vanilla/FolderPickerAdapter$Item;",
        ">;"
    }
.end annotation


# instance fields
.field private mCurrentDir:Ljava/io/File;

.field private mExcludedDirs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFsRoot:Ljava/io/File;

.field private mIncludedDirs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mStorageDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 62
    new-instance p2, Ljava/io/File;

    const-string v0, "/"

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lch/blinkenlights/android/vanilla/FolderPickerAdapter;->mFsRoot:Ljava/io/File;

    const-string p2, "layout_inflater"

    .line 79
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lch/blinkenlights/android/vanilla/FolderPickerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 80
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lch/blinkenlights/android/vanilla/FolderPickerAdapter;->mStorageDir:Ljava/io/File;

    .line 81
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/FolderPickerAdapter;->mStorageDir:Ljava/io/File;

    iput-object p1, p0, Lch/blinkenlights/android/vanilla/FolderPickerAdapter;->mCurrentDir:Ljava/io/File;

    return-void
.end method

.method private refresh()V
    .locals 8

    .line 181
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FolderPickerAdapter;->mCurrentDir:Ljava/io/File;

    .line 182
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 184
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 186
    iget-object v2, p0, Lch/blinkenlights/android/vanilla/FolderPickerAdapter;->mFsRoot:Ljava/io/File;

    invoke-virtual {v2, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 187
    new-instance v2, Lch/blinkenlights/android/vanilla/FolderPickerAdapter$Item;

    const/4 v4, 0x0

    const-string v5, ".."

    invoke-direct {v2, v5, v4, v3}, Lch/blinkenlights/android/vanilla/FolderPickerAdapter$Item;-><init>(Ljava/lang/String;Ljava/io/File;I)V

    invoke-virtual {p0, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    :cond_0
    if-nez v1, :cond_1

    .line 194
    iget-object v2, p0, Lch/blinkenlights/android/vanilla/FolderPickerAdapter;->mStorageDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 195
    new-array v1, v0, [Ljava/io/File;

    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FolderPickerAdapter;->mStorageDir:Ljava/io/File;

    aput-object v0, v1, v3

    :cond_1
    if-eqz v1, :cond_5

    .line 199
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 200
    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    aget-object v4, v1, v2

    .line 201
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 203
    iget-object v5, p0, Lch/blinkenlights/android/vanilla/FolderPickerAdapter;->mIncludedDirs:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const v5, -0xff37ad

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 205
    :goto_1
    iget-object v6, p0, Lch/blinkenlights/android/vanilla/FolderPickerAdapter;->mExcludedDirs:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/high16 v5, -0x2b0000

    .line 207
    :cond_3
    new-instance v6, Lch/blinkenlights/android/vanilla/FolderPickerAdapter$Item;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4, v5}, Lch/blinkenlights/android/vanilla/FolderPickerAdapter$Item;-><init>(Ljava/lang/String;Ljava/io/File;I)V

    .line 208
    invoke-virtual {p0, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private verifyDirs(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 168
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 170
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 172
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public getCurrentDir()Ljava/io/File;
    .locals 1

    .line 109
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FolderPickerAdapter;->mCurrentDir:Ljava/io/File;

    return-object v0
.end method

.method public getExcludedDirs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FolderPickerAdapter;->mExcludedDirs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIncludedDirs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FolderPickerAdapter;->mIncludedDirs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 89
    iget-object p2, p0, Lch/blinkenlights/android/vanilla/FolderPickerAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lch/blinkenlights/android/vanilla/R$layout;->draggable_row:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lch/blinkenlights/android/vanilla/DraggableRow;

    const/4 p3, 0x3

    .line 90
    invoke-virtual {p2, p3}, Lch/blinkenlights/android/vanilla/DraggableRow;->setupLayout(I)V

    .line 91
    invoke-virtual {p2}, Lch/blinkenlights/android/vanilla/DraggableRow;->getCoverView()Lch/blinkenlights/android/vanilla/LazyCoverView;

    move-result-object p3

    sget v0, Lch/blinkenlights/android/vanilla/R$drawable;->folder:I

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 94
    :cond_0
    check-cast p2, Lch/blinkenlights/android/vanilla/DraggableRow;

    .line 97
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lch/blinkenlights/android/vanilla/FolderPickerAdapter$Item;

    .line 98
    iget-object p3, p1, Lch/blinkenlights/android/vanilla/FolderPickerAdapter$Item;->file:Ljava/io/File;

    if-nez p3, :cond_1

    sget p3, Lch/blinkenlights/android/vanilla/R$drawable;->arrow_up:I

    goto :goto_1

    :cond_1
    sget p3, Lch/blinkenlights/android/vanilla/R$drawable;->folder:I

    .line 99
    :goto_1
    iget-object v0, p1, Lch/blinkenlights/android/vanilla/FolderPickerAdapter$Item;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lch/blinkenlights/android/vanilla/DraggableRow;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {p2}, Lch/blinkenlights/android/vanilla/DraggableRow;->getCoverView()Lch/blinkenlights/android/vanilla/LazyCoverView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    invoke-virtual {p2}, Lch/blinkenlights/android/vanilla/DraggableRow;->getCoverView()Lch/blinkenlights/android/vanilla/LazyCoverView;

    move-result-object p3

    iget p1, p1, Lch/blinkenlights/android/vanilla/FolderPickerAdapter$Item;->color:I

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-object p2
.end method

.method public setCurrentDir(Ljava/io/File;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/FolderPickerAdapter;->mCurrentDir:Ljava/io/File;

    .line 117
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/FolderPickerAdapter;->refresh()V

    return-void
.end method

.method public setExcludedDirs(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 154
    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/FolderPickerAdapter;->verifyDirs(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lch/blinkenlights/android/vanilla/FolderPickerAdapter;->mExcludedDirs:Ljava/util/ArrayList;

    .line 155
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/FolderPickerAdapter;->refresh()V

    return-void
.end method

.method public setIncludedDirs(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 135
    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/FolderPickerAdapter;->verifyDirs(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lch/blinkenlights/android/vanilla/FolderPickerAdapter;->mIncludedDirs:Ljava/util/ArrayList;

    .line 136
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/FolderPickerAdapter;->refresh()V

    return-void
.end method
