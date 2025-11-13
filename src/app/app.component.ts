import { Component } from '@angular/core';
import { IonApp, IonRouterOutlet } from '@ionic/angular/standalone';
import {
  CapacitorSQLite,
  SQLiteConnection,
  SQLiteDBConnection,
} from '@capacitor-community/sqlite';

@Component({
  selector: 'app-root',
  templateUrl: 'app.component.html',
  imports: [IonApp, IonRouterOutlet],
})
export class AppComponent {
  constructor() {
    this.init();
  }

  async init(): Promise<void> {
    const sqliteConnection = new SQLiteConnection(CapacitorSQLite);

    const db: SQLiteDBConnection = await sqliteConnection.createConnection(
      'my-db',
      false,
      'no-encryption',
      1,
      false
    );

    await db.open();
  }
}
