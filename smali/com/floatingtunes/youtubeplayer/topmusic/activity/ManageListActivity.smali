.class public Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;
.super Lcom/floatingtunes/youtubeplayer/topmusic/activity/BaseActivity;
.source "ManageListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListHolder;,
        Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListAdapter;
    }
.end annotation


# instance fields
.field mBooleanArray:Landroid/util/SparseBooleanArray;

.field mFirebaseStorage:Lcom/google/firebase/storage/FirebaseStorage;

.field mIvDelete:Landroid/widget/ImageView;

.field mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;",
            ">;"
        }
    .end annotation
.end field

.field mListAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListAdapter;

.field mLlDelete:Landroid/widget/LinearLayout;

.field mLlNothing:Landroid/widget/LinearLayout;

.field mLlSelectAll:Landroid/widget/LinearLayout;

.field mRvPlaylist:Landroidx/recyclerview/widget/RecyclerView;

.field mSelectAll:Z

.field mStorageReference:Lcom/google/firebase/storage/StorageReference;

.field mToolbar:Landroidx/appcompat/widget/Toolbar;

.field mTvDelete:Landroid/widget/TextView;

.field mTvSelectAll:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mSelectAll:Z

    .line 63
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mBooleanArray:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method static synthetic access$100(Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->notifyLayout()V

    return-void
.end method

.method private notifyLayout()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 241
    :goto_0
    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mBooleanArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 242
    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mBooleanArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 246
    :cond_1
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mBooleanArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ne v2, v1, :cond_2

    .line 247
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mTvSelectAll:Landroid/widget/TextView;

    const v1, 0x7f1102fe

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x1

    .line 248
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mSelectAll:Z

    goto :goto_1

    .line 250
    :cond_2
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mTvSelectAll:Landroid/widget/TextView;

    const v3, 0x7f1102a7

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 251
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mSelectAll:Z

    :goto_1
    if-lez v2, :cond_3

    .line 254
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mTvDelete:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 255
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mIvDelete:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0802b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 257
    :cond_3
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mTvDelete:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 258
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mIvDelete:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 69
    invoke-super {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0025

    .line 70
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 71
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 72
    invoke-static {}, Lcom/google/firebase/storage/FirebaseStorage;->getInstance()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mFirebaseStorage:Lcom/google/firebase/storage/FirebaseStorage;

    .line 73
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mFirebaseStorage:Lcom/google/firebase/storage/FirebaseStorage;

    invoke-virtual {p1}, Lcom/google/firebase/storage/FirebaseStorage;->getReference()Lcom/google/firebase/storage/StorageReference;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mStorageReference:Lcom/google/firebase/storage/StorageReference;

    .line 74
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f0801f1

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 75
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 76
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 78
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/DBHelper;->getFoldersToManage()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mList:Ljava/util/List;

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 80
    :goto_0
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 81
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mBooleanArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 85
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 86
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mRvPlaylist:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 87
    new-instance p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListAdapter;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListAdapter;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$1;)V

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mListAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListAdapter;

    .line 88
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mRvPlaylist:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mListAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_1

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mLlSelectAll:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mLlDelete:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mLlNothing:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public onMLlDeleteClicked()V
    .locals 3

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 101
    :goto_0
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mBooleanArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 102
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mBooleanArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    invoke-static {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/DBHelper;->deleteFolder(Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;)V

    .line 104
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    invoke-virtual {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->getFolder_name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onMLlSelectAllClicked()V
    .locals 3

    .line 113
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mSelectAll:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mSelectAll:Z

    .line 114
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mSelectAll:Z

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mTvSelectAll:Landroid/widget/TextView;

    const v1, 0x7f1102fe

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 116
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mTvDelete:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mIvDelete:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080067

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mTvSelectAll:Landroid/widget/TextView;

    const v1, 0x7f1102a7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 120
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mTvDelete:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mIvDelete:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const/4 v0, 0x0

    .line 124
    :goto_1
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mBooleanArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mBooleanArray:Landroid/util/SparseBooleanArray;

    iget-boolean v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mSelectAll:Z

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mListAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 265
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 270
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
