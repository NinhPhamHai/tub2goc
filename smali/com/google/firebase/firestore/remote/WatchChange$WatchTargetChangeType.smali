.class public final enum Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;
.super Ljava/lang/Enum;
.source "com.google.firebase:firebase-firestore@@21.4.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/remote/WatchChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WatchTargetChangeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

.field public static final enum Added:Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

.field public static final enum Current:Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

.field public static final enum NoChange:Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

.field public static final enum Removed:Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

.field public static final enum Reset:Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 172
    new-instance v0, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    const/4 v1, 0x0

    const-string v2, "NoChange"

    invoke-direct {v0, v2, v1}, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;->NoChange:Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    .line 173
    new-instance v0, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    const/4 v2, 0x1

    const-string v3, "Added"

    invoke-direct {v0, v3, v2}, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;->Added:Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    .line 174
    new-instance v0, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    const/4 v3, 0x2

    const-string v4, "Removed"

    invoke-direct {v0, v4, v3}, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;->Removed:Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    .line 175
    new-instance v0, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    const/4 v4, 0x3

    const-string v5, "Current"

    invoke-direct {v0, v5, v4}, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;->Current:Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    .line 176
    new-instance v0, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    const/4 v5, 0x4

    const-string v6, "Reset"

    invoke-direct {v0, v6, v5}, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;->Reset:Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    const/4 v0, 0x5

    .line 171
    new-array v0, v0, [Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    sget-object v6, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;->NoChange:Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    aput-object v6, v0, v1

    sget-object v1, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;->Added:Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;->Removed:Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;->Current:Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;->Reset:Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;->$VALUES:[Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 171
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;
    .locals 1

    .line 171
    const-class v0, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;
    .locals 1

    .line 171
    sget-object v0, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;->$VALUES:[Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    invoke-virtual {v0}, [Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    return-object v0
.end method
