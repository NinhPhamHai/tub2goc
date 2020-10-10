.class public Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "RadioListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity$RecycleViewAdapter;
    }
.end annotation


# instance fields
.field private isLoading:Z

.field mContext:Landroid/content/Context;

.field private mJsonRef:Lcom/google/firebase/storage/StorageReference;

.field musicList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;",
            ">;"
        }
    .end annotation
.end field

.field page:I

.field progressBar:Landroid/widget/ProgressBar;

.field recycleView:Landroidx/recyclerview/widget/RecyclerView;

.field recycleViewAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity$RecycleViewAdapter;

.field private storage:Lcom/google/firebase/storage/FirebaseStorage;

.field titleName:Ljava/lang/String;

.field toolBar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->page:I

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->musicList:Ljava/util/List;

    .line 62
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->isLoading:Z

    return-void
.end method

.method static synthetic access$000(Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->isLoading:Z

    return p0
.end method

.method static synthetic access$002(Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->isLoading:Z

    return p1
.end method


# virtual methods
.method public initView()V
    .locals 2

    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->titleName:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->toolBar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 84
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->toolBar:Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f0801f1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 89
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->titleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->toolBar:Landroidx/appcompat/widget/Toolbar;

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity$1;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public loadData()V
    .locals 3

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->isLoading:Z

    .line 103
    invoke-static {}, Lcom/google/firebase/storage/FirebaseStorage;->getInstance()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v1

    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->storage:Lcom/google/firebase/storage/FirebaseStorage;

    .line 105
    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->page:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->page:I

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "radiodb/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->titleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->titleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->page:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->storage:Lcom/google/firebase/storage/FirebaseStorage;

    invoke-virtual {v1}, Lcom/google/firebase/storage/FirebaseStorage;->getReference()Lcom/google/firebase/storage/StorageReference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->mJsonRef:Lcom/google/firebase/storage/StorageReference;

    .line 112
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->mJsonRef:Lcom/google/firebase/storage/StorageReference;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/storage/StorageReference;->getBytes(J)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity$3;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity$3;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity$2;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity$2;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;)V

    .line 166
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 66
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0026

    .line 67
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 68
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 69
    iput-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->initView()V

    .line 72
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->loadData()V

    return-void
.end method

.method public setRecycleView()V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->recycleViewAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity$RecycleViewAdapter;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 192
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->recycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 193
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity$RecycleViewAdapter;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->musicList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity$RecycleViewAdapter;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->recycleViewAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity$RecycleViewAdapter;

    .line 194
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->recycleView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->recycleViewAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity$RecycleViewAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 197
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->recycleView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity$4;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity$4;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    goto :goto_0

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->musicList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity$RecycleViewAdapter;->updateData(Ljava/util/List;)V

    :goto_0
    return-void
.end method
