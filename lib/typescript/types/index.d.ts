import type { RecordType } from './records.types';
export interface Permission {
    accessType: 'read' | 'write';
    recordType: RecordType;
}
export interface WriteExerciseRoutePermission {
    accessType: 'write';
    recordType: 'ExerciseRoute';
}
export interface ReadHealthDataHistoryPermission {
    accessType: 'read';
    recordType: 'ReadHealthDataHistory';
}
export interface ReadHealthDataInBackgroundPermission {
    accessType: 'read';
    recordType: 'ReadHealthDataInBackground';
}
export * from './aggregate.types';
export * from './changes.types';
export * from './metadata.types';
export * from './records.types';
export * from './results.types';
//# sourceMappingURL=index.d.ts.map