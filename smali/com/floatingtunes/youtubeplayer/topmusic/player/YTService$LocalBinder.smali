.class public Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$LocalBinder;
.super Landroid/os/Binder;
.source "YTService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$LocalBinder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$LocalBinder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    return-object v0
.end method
