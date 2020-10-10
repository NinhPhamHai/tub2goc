.class final Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$1;
.super Ljava/lang/Object;
.source "YTService.java"

# interfaces
.implements Lcom/floatingtunes/youtubeplayer/topmusic/util/PermissionDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->start(Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appCompatActivity:Landroidx/appcompat/app/AppCompatActivity;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$1;->val$appCompatActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onButtonClick(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 148
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$1;->val$appCompatActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/util/PermissionUtil;->showPermissionSetting(Landroidx/appcompat/app/AppCompatActivity;)V

    :cond_0
    return-void
.end method
