.class public Lch/blinkenlights/android/vanilla/PermissionRequestActivity;
.super Landroid/app/Activity;
.source "PermissionRequestActivity.java"


# static fields
.field private static final NEEDED_PERMISSIONS:[Ljava/lang/String;


# instance fields
.field private mCallbackIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 39
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lch/blinkenlights/android/vanilla/PermissionRequestActivity;->NEEDED_PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static havePermissions(Landroid/content/Context;)Z
    .locals 5

    .line 133
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 134
    sget-object v0, Lch/blinkenlights/android/vanilla/PermissionRequestActivity;->NEEDED_PERMISSIONS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 135
    invoke-virtual {p0, v4}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static requestPermissions(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 3

    .line 115
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PermissionRequestActivity;->havePermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lch/blinkenlights/android/vanilla/PermissionRequestActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "callbackIntent"

    .line 119
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 120
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    xor-int/lit8 p0, v0, 0x1

    return p0
.end method

.method public static showWarning(Lch/blinkenlights/android/vanilla/LibraryActivity;Landroid/content/Intent;)V
    .locals 4

    .line 94
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 95
    sget v1, Lch/blinkenlights/android/vanilla/R$layout;->permission_request:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 97
    new-instance v1, Lch/blinkenlights/android/vanilla/PermissionRequestActivity$1;

    invoke-direct {v1, p0, p1}, Lch/blinkenlights/android/vanilla/PermissionRequestActivity$1;-><init>(Lch/blinkenlights/android/vanilla/LibraryActivity;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    sget p1, Lch/blinkenlights/android/vanilla/R$id;->content:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 p1, -0x1

    .line 105
    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "callbackIntent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    iput-object p1, p0, Lch/blinkenlights/android/vanilla/PermissionRequestActivity;->mCallbackIntent:Landroid/content/Intent;

    .line 51
    sget-object p1, Lch/blinkenlights/android/vanilla/PermissionRequestActivity;->NEEDED_PERMISSIONS:[Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 65
    array-length p1, p3

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    aget v1, p3, p2

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 73
    array-length p1, p3

    if-ne v0, p1, :cond_3

    .line 74
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PermissionRequestActivity;->mCallbackIntent:Landroid/content/Intent;

    if-eqz p1, :cond_2

    const p2, 0x10008000

    .line 76
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 77
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PermissionRequestActivity;->mCallbackIntent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 83
    :cond_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    :cond_3
    return-void
.end method
