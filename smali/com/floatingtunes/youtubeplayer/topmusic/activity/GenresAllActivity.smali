.class public Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;
.super Lcom/floatingtunes/youtubeplayer/topmusic/activity/BaseActivity;
.source "GenresAllActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity$GenresItemAdapter;
    }
.end annotation


# instance fields
.field mBtnRetry:Landroid/widget/Button;

.field mNetworkError:Landroid/widget/ImageView;

.field mNetworkErrorLl:Landroid/widget/LinearLayout;

.field private mPlaylistBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;",
            ">;"
        }
    .end annotation
.end field

.field mProgressBar:Landroid/widget/ProgressBar;

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field mTextError:Landroid/widget/TextView;

.field mToolBar:Landroidx/appcompat/widget/Toolbar;

.field private storage:Lcom/google/firebase/storage/FirebaseStorage;

.field private storageRef:Lcom/google/firebase/storage/StorageReference;

.field type_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/BaseActivity;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;->mPlaylistBeanList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;->handleError()V

    return-void
.end method

.method static synthetic access$100(Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;->mPlaylistBeanList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;->initRecyclerView()V

    return-void
.end method

.method static synthetic access$400(Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;)Lcom/google/firebase/storage/StorageReference;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;->storageRef:Lcom/google/firebase/storage/StorageReference;

    return-object p0
.end method

.method private handleError()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;->mNetworkErrorLl:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private initRecyclerView()V
    .locals 7

    .line 178
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;->type_name:Ljava/lang/String;

    const-string v1, "Genres"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f0700a1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 180
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v3, 0x3

    invoke-direct {v0, p0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 182
    iget-object v4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Lcom/floatingtunes/youtubeplayer/topmusic/view/GridSpacingItemDecoration;

    .line 183
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-direct {v5, v3, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/view/GridSpacingItemDecoration;-><init>(IIZ)V

    .line 182
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto :goto_0

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;->type_name:Ljava/lang/String;

    const-string v3, "Top World"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v3, 0x2

    invoke-direct {v0, p0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 189
    iget-object v4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Lcom/floatingtunes/youtubeplayer/topmusic/view/GridSpacingItemDecoration;

    .line 190
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-direct {v5, v3, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/view/GridSpacingItemDecoration;-><init>(IIZ)V

    .line 189
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto :goto_0

    .line 194
    :cond_1
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 196
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 201
    :goto_0
    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity$GenresItemAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity$GenresItemAdapter;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity$1;)V

    .line 203
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 204
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private loadData()V
    .locals 5

    .line 119
    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;->type_name:Ljava/lang/String;

    const-string v2, "Genres"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "playlist_list"

    const-string v3, "music_db_201905"

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {v0, v3}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v0

    const-string v1, "genres"

    .line 126
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v0

    .line 127
    invoke-virtual {v0, v2}, Lcom/google/firebase/firestore/DocumentReference;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v0

    goto :goto_0

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;->type_name:Ljava/lang/String;

    const-string v4, "Top World"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    invoke-virtual {v0, v3}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v0

    const-string v1, "country_topvideo"

    .line 132
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v0

    .line 133
    invoke-virtual {v0, v2}, Lcom/google/firebase/firestore/DocumentReference;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-wide/16 v1, 0x64

    .line 137
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/firestore/Query;->limit(J)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    const-string v1, "title"

    .line 138
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/Query;->orderBy(Ljava/lang/String;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lcom/google/firebase/firestore/Query;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity$2;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity$2;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;)V

    .line 140
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity$1;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;)V

    .line 161
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 77
    invoke-super {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0021

    .line 78
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 79
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "type_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;->type_name:Ljava/lang/String;

    .line 83
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;->type_name:Ljava/lang/String;

    const-string v0, "Genres"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Top Charts"

    .line 93
    :goto_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;->mToolBar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 94
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 95
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;->mToolBar:Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f0801f1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 96
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 98
    invoke-static {}, Lcom/google/firebase/storage/FirebaseStorage;->getInstance()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;->storage:Lcom/google/firebase/storage/FirebaseStorage;

    .line 99
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;->storage:Lcom/google/firebase/storage/FirebaseStorage;

    invoke-virtual {p1}, Lcom/google/firebase/storage/FirebaseStorage;->getReference()Lcom/google/firebase/storage/StorageReference;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;->storageRef:Lcom/google/firebase/storage/StorageReference;

    .line 101
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;->loadData()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 106
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 111
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onViewClicked()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;->mNetworkErrorLl:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
