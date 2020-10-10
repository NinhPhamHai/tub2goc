.class public Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;
.super Landroidx/fragment/app/Fragment;
.source "MissionsFragment.java"


# instance fields
.field private mAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;

.field private mBinder:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;

.field private mClear:Landroid/view/MenuItem;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mEmpty:Landroid/view/View;

.field private mForceUpdate:Z

.field private mGridManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private mLinear:Z

.field private mLinearManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mList:Landroidx/recyclerview/widget/RecyclerView;

.field private mPause:Landroid/view/MenuItem;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mStart:Landroid/view/MenuItem;

.field private mSwitch:Landroid/view/MenuItem;

.field private unsafeMissionTarget:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mClear:Landroid/view/MenuItem;

    .line 45
    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mStart:Landroid/view/MenuItem;

    .line 46
    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mPause:Landroid/view/MenuItem;

    .line 58
    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->unsafeMissionTarget:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    .line 60
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment$1;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;)V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;)Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mBinder:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;

    return-object p0
.end method

.method static synthetic access$002(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;)Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mBinder:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;

    return-object p1
.end method

.method static synthetic access$100(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;)Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;

    return-object p0
.end method

.method static synthetic access$102(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;)Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;

    return-object p1
.end method

.method static synthetic access$200(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;)Landroid/view/View;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mEmpty:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->setAdapterButtons()V

    return-void
.end method

.method static synthetic access$500(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->updateList()V

    return-void
.end method

.method static synthetic access$600(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->recoverMission(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;)V

    return-void
.end method

.method private recoverMission(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;)V
    .locals 2

    .line 242
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->unsafeMissionTarget:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    .line 243
    iget-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    .line 246
    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    .line 247
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->getType()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x1230

    .line 243
    invoke-static {p0, v1, v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->requestSafWithFileCreation(Landroidx/fragment/app/Fragment;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setAdapterButtons()V
    .locals 3

    .line 235
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mClear:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mStart:Landroid/view/MenuItem;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mPause:Landroid/view/MenuItem;

    if-nez v1, :cond_0

    goto :goto_0

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;

    invoke-virtual {v1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->setClearButton(Landroid/view/MenuItem;)V

    .line 238
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mStart:Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mPause:Landroid/view/MenuItem;

    invoke-virtual {v0, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->setMasterButtons(Landroid/view/MenuItem;Landroid/view/MenuItem;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateList()V
    .locals 3

    .line 205
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mLinear:Z

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mLinearManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mGridManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 212
    :goto_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 213
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 216
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;

    iget-boolean v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mLinear:Z

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->setLinear(Z)V

    .line 217
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 219
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mSwitch:Landroid/view/MenuItem;

    if-eqz v0, :cond_3

    .line 223
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mLinear:Z

    if-eqz v0, :cond_1

    const v0, 0x7f080226

    goto :goto_1

    :cond_1
    const v0, 0x7f080232

    .line 228
    :goto_1
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mSwitch:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 229
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mSwitch:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mLinear:Z

    if-eqz v1, :cond_2

    const v1, 0x7f110175

    goto :goto_2

    :cond_2
    const v1, 0x7f1101b6

    :goto_2
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 230
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-boolean v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mLinear:Z

    const-string v2, "linear"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    return-void
.end method


# virtual methods
.method public synthetic lambda$onOptionsItemSelected$0$MissionsFragment(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 185
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->clearFinishedDownloads()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 288
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x1230

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->unsafeMissionTarget:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    if-eqz p1, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 297
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->unsafeMissionTarget:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->getTag()Ljava/lang/String;

    move-result-object p1

    .line 298
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->unsafeMissionTarget:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    invoke-direct {v0, v1, v2, p3, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    iput-object v0, p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    .line 299
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;

    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->unsafeMissionTarget:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    invoke-virtual {p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->recoverMission(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 301
    :catch_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mContext:Landroid/content/Context;

    const p2, 0x7f11016b

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 142
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 144
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 128
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 133
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 p3, 0x0

    const v0, 0x7f0c00ca

    .line 90
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 93
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v0, "linear"

    invoke-interface {p2, v0, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mLinear:Z

    .line 96
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mContext:Landroid/content/Context;

    new-instance p3, Landroid/content/Intent;

    const-class v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;

    invoke-direct {p3, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p2, p3, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const p2, 0x7f090134

    .line 99
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mEmpty:Landroid/view/View;

    const p2, 0x7f090192

    .line 100
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 103
    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const/4 v0, 0x2

    invoke-direct {p2, p3, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mGridManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 104
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mGridManager:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance p3, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment$2;

    invoke-direct {p3, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment$2;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 116
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mLinearManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 118
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    .line 150
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 151
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mBinder:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;

    if-nez v1, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->getMessenger()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;->removeMissionEventListener(Landroid/os/Handler;)V

    .line 154
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mBinder:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;->enableNotifications(Z)V

    .line 155
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 156
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->deleterDispose(Z)V

    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mBinder:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;

    .line 159
    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;

    :cond_1
    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 176
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 178
    :sswitch_0
    iget-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mLinear:Z

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mLinear:Z

    .line 179
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->updateList()V

    return v2

    .line 190
    :sswitch_1
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 191
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mPause:Landroid/view/MenuItem;

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 192
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mBinder:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;->getDownloadManager()Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->startAllMissions()V

    return v2

    .line 195
    :sswitch_2
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 196
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mStart:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 197
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mBinder:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;->getDownloadManager()Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->pauseAllMissions(Z)V

    .line 198
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->ensurePausedMissions()V

    goto :goto_0

    .line 182
    :sswitch_3
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f110076

    .line 183
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f1100a6

    .line 184
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x104000a

    .line 185
    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/-$$Lambda$MissionsFragment$bw0_pFXjJgPB1IBZn6EACwq9QBs;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/-$$Lambda$MissionsFragment$bw0_pFXjJgPB1IBZn6EACwq9QBs;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f110067

    const/4 v1, 0x0

    .line 186
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 187
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return v2

    .line 200
    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :sswitch_data_0
    .sparse-switch
        0x7f090067 -> :sswitch_3
        0x7f0901cc -> :sswitch_2
        0x7f090269 -> :sswitch_1
        0x7f090279 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .line 281
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 282
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->onPaused()V

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mBinder:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;->enableNotifications(Z)V

    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    const v0, 0x7f090279

    .line 164
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mSwitch:Landroid/view/MenuItem;

    const v0, 0x7f090067

    .line 165
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mClear:Landroid/view/MenuItem;

    const v0, 0x7f090269

    .line 166
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mStart:Landroid/view/MenuItem;

    const v0, 0x7f0901cc

    .line 167
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mPause:Landroid/view/MenuItem;

    .line 169
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->setAdapterButtons()V

    .line 171
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 264
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 266
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 267
    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->deleterResume()V

    .line 269
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mForceUpdate:Z

    if-eqz v0, :cond_0

    .line 270
    iput-boolean v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mForceUpdate:Z

    .line 271
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->forceUpdate()V

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mBinder:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;

    invoke-virtual {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->getMessenger()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;->addMissionEventListener(Landroid/os/Handler;)V

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mBinder:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;->enableNotifications(Z)V

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 253
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 255
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 256
    invoke-virtual {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->deleterDispose(Z)V

    const/4 p1, 0x1

    .line 257
    iput-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mForceUpdate:Z

    .line 258
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mBinder:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->mAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->getMessenger()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;->removeMissionEventListener(Landroid/os/Handler;)V

    :cond_0
    return-void
.end method
